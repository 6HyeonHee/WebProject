package membership;

import common.JDBConnect2;
import jakarta.servlet.ServletContext;

public class MemberDAO2 extends JDBConnect2 {

    // 생성자1 : 드라이버, 커넥션 URL등 4개의 매개변수로 정의
    public MemberDAO2(String drv, String url, String id, String pw) {
        super(drv, url, id, pw);
        if (con == null) {
            throw new IllegalStateException("Database connection failed");
        }
    }

    // 생성자2 : application 내장객체를 매개변수로 정의
    public MemberDAO2(ServletContext application) {
        super(application);
        if (con == null) {
            throw new IllegalStateException("Database connection failed");
        }
    }



	// 회원 가입을 위한 메서드
    public int insertMember(MemberDTO2 dto) {
        int result = 0;

        try {
            String query = "INSERT INTO member ( "
                    + " name, email, phone, id, pass, passrepeat, regidate ) "
                    + " VALUES ( ?, ?, ?, ?, ?, ?, sysdate )";

            // 로그 추가
            System.out.println("Preparing statement with query: " + query);

            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getEmail());
            psmt.setString(3, dto.getPhone());
            psmt.setString(4, dto.getId());
            psmt.setString(5, dto.getPass());
            psmt.setString(6, dto.getPassrepeat());

            // 콘솔에 값 출력하여 확인
            System.out.println("Inserting values: ");
            System.out.println("Name: " + dto.getName());
            System.out.println("Email: " + dto.getEmail());
            System.out.println("Phone: " + dto.getPhone());
            System.out.println("ID: " + dto.getId());
            System.out.println("Pass: " + dto.getPass());
            System.out.println("PassRepeat: " + dto.getPassrepeat());

            result = psmt.executeUpdate();

        } catch(Exception e) {
            System.out.println("회원가입 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }
    
    //아이디 중복확인을 위한 메서드
    public int CheckId(String uid) {
    	
    	int result=0;
    	
    	String query = "SELECT * FROM member WHERE id=?";
    	
    	try {
    		
	    	psmt = con.prepareStatement(query);
	    	psmt.setString(1, uid);
	    	
	    	rs = psmt.executeQuery();
	    	
	    	if(rs.next()) {
				result=1; // 존재할 경우
	    	} else {
	    		result=0;
	    	}
	    	rs.close();
	    	psmt.close();
	    	con.close();
	    	
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return result;
    }
    
    // 로그인을 위한 메서드
    public MemberDTO2 getMemberDTO(String uid, String upass) {
    	
    	MemberDTO2 dto = new MemberDTO2();
    	
    	String query = "SELECT * FROM member WHERE id=? AND pass=?";
    	
    	try {
    		psmt = con.prepareStatement(query);
    		
    		psmt.setString(1, uid);
    		psmt.setString(2, upass);
    		
    		rs = psmt.executeQuery();
    		
    		if(rs.next()) {
				// 회원정보가 있다면 DTO 객체에 저장한다.
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setPassrepeat(rs.getString(3));
				dto.setName(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setPhone(rs.getString(6));
				dto.setRegidate(rs.getString(7));
			}
    	} catch (Exception e) {
			e.printStackTrace();
		}
    	return dto;
    }
}
