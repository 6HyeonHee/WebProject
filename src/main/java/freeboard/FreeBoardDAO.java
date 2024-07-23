package freeboard;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.DBConnPool2;

// 커넥션풀을 통한 DB연결을 위해 클래스 상속
public class FreeBoardDAO extends DBConnPool2 {
	
	// 디폴트 생성자(직접 정의하지 않아도 자동으로 삽입된다.)
	public FreeBoardDAO() {
		super();
	}
	
	// 게시물의 갯수를 카운트. 검색어가 있는 경우 where절을 동적으로 추가한다.
	public int selectCount(Map<String, Object> map) {
		int totalCount = 0;
	
		String query = "SELECT COUNT(*) FROM freeboard ";
		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%'";
		}
		
		
		try {
			// 인파라미터가 없는 정적 쿼리문을 실행하므로 Statement 인스턴스를 생성
			stmt = con.createStatement();
			// 쿼리문 실행 후 결과 반환
			rs = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		} catch(Exception e) {
			System.out.println("게시물 수를 구하는 중 예외 발생");
			e.printStackTrace();
		}
		
		return totalCount;
	}
	
	// 목록에 출력할 게시물을 페이지 단위로 얻어오기 위한 메서드
	public List<FreeBoardDTO> selectListPage(Map<String, Object> map) {
		
		// freeboard 테이블을 대상으로 하므로 타입 매개변수 확인 필요함
		List<FreeBoardDTO> freeboardLists = new Vector<FreeBoardDTO>();
		
		/*
		 페이징 처리를 위한 서브쿼리문 작성. 게시물의 순차적인 일련번호를 부여하는
		 rownum을 통해 게시물을 구간에 맞게 인출한다
		 */
		String query = " SELECT * FROM ( "
					+ "		SELECT Tb.*, ROWNUM rNum FROM ( "
					+ " 		SELECT * FROM freeboard ";
		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " "
					+ " LIKE '%" + map.get("searchWord") + "%' ";
		}
		query += " 		ORDER BY idx DESC "
				+ "	) Tb "
				+ " ) "
				+ " WHERE rNum BETWEEN ? AND ? ";
		
		try {
			// 인파라미터가 있는 동적 쿼리문 실행
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				FreeBoardDTO dto = new FreeBoardDTO();
				
				// setter를 이용해서 각 컬럼의 값을 멤버변수에 저장
				dto.setIdx(rs.getString("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getInt("visitcount"));
				
				// List에 추가한다.
				freeboardLists.add(dto);
			}
		} catch(Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		return freeboardLists;
	}
	
	// 게시물 입력을 위한 메서드
		public int insertWrite(FreeBoardDTO dto) {
			// 사용자가 작성한 내용은 DTO에 저장한 후 인수로 전달한다.
			int result = 0;
			try {
				// 인파라미터가 있는 insert 쿼리문 작성
				String query = "INSERT INTO freeboard ( "
						+ " idx, title, content, id, ofile, sfile, visitcount) "
						+ " VALUES ( "
						+ " seq_board_num.NEXTVAL, ?, ?, ?, ?, ?, 0)";
				// 일련번호의 경우 시퀀스를 통해 입력한다.
				
				// prepared 인스턴스 생성 및 인파라미터 설정
				psmt = con.prepareStatement(query);
				psmt.setString(1, dto.getTitle());
				psmt.setString(2, dto.getContent());
				psmt.setString(3, dto.getId());
				psmt.setString(4, dto.getOfile());
				psmt.setString(5, dto.getSfile());
				
				// 쿼리문 실행
				result = psmt.executeUpdate();
			} catch (Exception e) {
				System.out.println("게시물 입력 중 예외 발생");
				e.printStackTrace();
			}
			
			return result;
		}
	
	// 매개변수로 전달된 게시물의 일련번호로 게시물을 인출한다.
		public FreeBoardDTO selectView(String num) {
			// 하나의 레코드를 저장하기 위한 DTO인스턴스 생성
			FreeBoardDTO dto = new FreeBoardDTO();
			
			/* 내부조인(inner join)을 통해 member테이블의
			 name 컬럼까지 select 한다.	*/
			String query = "SELECT B.*, M.name "
					+ " FROM member M INNER JOIN freeboard B "
					+ " ON M.id=B.id "
					+ " WHERE idx=? ";
			
			try {
				// 쿼리문의 인파라미터를 설정한 후 쿼리문 실행
				psmt = con.prepareStatement(query);
				psmt.setString(1, num);
				rs = psmt.executeQuery();
				/*
				 일련번호는 중복되지 않으므로 단 한개의 게시물만 인출하게 된다.
				 따라서 while문이 아닌 if문으로 처리한다. next()는 RewultSet으로
				 반환된 레코드를 확인해서 존재하면 true를 반환해준다.  
				 */
				if (rs.next()) {
					dto.setIdx(rs.getString(1));
					dto.setTitle(rs.getString(2));
					/*
					 각 컬럼의 값을 추출할 때 1부터 시작하는 인덱스와 컬럼명
					 둘 다 사용할 수 있다. 날짜인 경우에는 getDdate()로 인출할 수 있다.
					 */
					dto.setContent(rs.getString("content"));
					dto.setPostdate(rs.getDate("postdate"));
					dto.setId(rs.getString("id"));
					dto.setVisitcount(rs.getInt("visitcount"));
					dto.setOfile(rs.getString("ofile"));
					dto.setSfile(rs.getString("sfile"));
					// 인출된 데이터는 DTO인스턴스에 저장한다.
				}
				
			} catch(Exception e) {
				System.out.println("게시물 상세보기 중 예외 발생");
				e.printStackTrace();
			}
			return dto;
		}
	
	// 게시물의 조회수를 증가
	public void updateVisitCount(String count) {
		String query = "UPDATE freeboard SET "
				+ " visitcount = visitcount + 1 "
				+ " WHERE idx=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, count);
			psmt.executeQuery();
			
		} catch(Exception e) {
			System.out.println("게시물 조회수 증가 중 예외 발생");
			e.printStackTrace();
		}
	}
	
	// 파일 다운로드 시 카운트 증가
	public void downCountPlus(String idx) {
		String sql = "UPDATE freeboard SET "
				+ " downcount = downcount + 1 "
				+ " WHERE idx = ? ";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, idx);
			psmt.executeUpdate();
		} catch (Exception e) {}
	}
	
	// 아이디 검증
	public boolean confrimUserId(String id, String idx) {
		boolean isCorr = true;
		try {
			/*
			 패스워드와 일련번호 두가지 조건에 만족하는 게시물이 있는지 확인.
			 게시물을 인출할 목적이 아니므로 count"() 함수면 충분하다.
			*/
			String sql = "SELECT COUNT(*) FROM mvcboard WHERE id=? AND idx=?";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, idx);
			rs = psmt.executeQuery();
			// count() 함수는 항상 결과가 있으므로 조건문 없이 호출한다.
			rs.next();
			if (rs.getInt(1) == 0) {
				// 조건에 맞는 게시물이 없다면 false로 변경
				isCorr = false;
			}
		} catch (Exception e) {
			// 예외가 발생하여 확인이 불가한 경우에 false를 반환해야한다.
			isCorr = false;
			e.printStackTrace();
		}
		return isCorr;
	}
	
	// 일련번호에 해당하는 게시물을 삭제
	public int deletePost(String idx) {
		int result = 0;
		try {
			String query = "DELETE FROM freeboard WHERE idx=?";
			psmt = con.prepareStatement(query);
			psmt.setString(1, idx);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시물 삭제 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	// 게시물 수정
	public int updatePost(FreeBoardDTO dto) {
		int result = 0;
		try {
			// 수정을 위한 update 쿼리문 작성
			String query = "UPDATE freeboard "
					+ " SET title=?, content=?, id=?, ofile=?, sfile=? "
					+ " WHERE idx=?";
			
			// prepared 인스턴스 생성 및 인파라미터 설정
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("게시물 수정 중 예외 발생");
			e.printStackTrace();
		}
		return result;
	}
	
	
	
}
