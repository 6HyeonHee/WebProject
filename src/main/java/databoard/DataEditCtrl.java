package databoard;

import java.io.IOException;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction2;

// 요청명에 대한 매핑과 첨부파일 제한 용량에 대한 설정
@WebServlet("/databoard/edit.do")
@MultipartConfig (
	maxFileSize = 1024 * 1024 * 5,
	maxRequestSize = 1024 * 1024 * 50
)
public class DataEditCtrl extends HttpServlet {

	private static final long serialVersionUID = 1L;
	/*
	 수정 페이지로 진입하면 기존 내용을 가져와서 작성폼에 설정한다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		/*
		 파라미터로 전달된 일련번호를 통해 기존의 게시물을 인출한다.
		 상세보기에서 사용한 메서드를 그대로 사용하면 된다.
		 */
		String idx = req.getParameter("idx");
		DataBoardDAO dao = new DataBoardDAO();
		DataBoardDTO dto = dao.selectView(idx);
		// DTO를 request 영역에 저장한 후 수정페이지로 포워드 한다.
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/binggrae/databoard-edit.jsp").forward(req, resp);
	}
	
	/*
	 수정할 내용을 입력한 후 전송된 폼값을 update쿼리문으로 생성한다.
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// 업로드 디렉토리의 물리적 경로 얻기
		String saveDirectory = req.getServletContext().getRealPath("/binggrae/Uploads");
		
		// 파일 업로드
		String originalFileName = "";
		try {
			// 업로드가 완료되면 원본파일명을 반환
			originalFileName = FileUtil.uploadFile(req, saveDirectory);
		} catch (Exception e) {
			JSFunction2.alertBack(resp, "파일 업로드 오류입니다.");
			return;
		}
		
		// 파일 외 폼값을 받아 변수에 저장
		/*
		 수정을 위해 hidden 입력상자에 저장된 내용도 같이 받아온다.
		 게시물의 일련번호와 기존 등록된 파일명이 함께 전송된다.
		 */
		String idx = req.getParameter("idx");
		String prevOfile = req.getParameter("prevOfile");
		String prevSfile = req.getParameter("prevSfile");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		/*
		 패스워드 검증에 성공한 경우 session 영역에 저장된 패스워드를 가져온다.
		 영역에 저장시 Object 타입으로 자동 형변환 되므로 기존 타입으로
		 다운 캐스팅 후 사용한다.
		 */
		HttpSession session = req.getSession();
		String UserId = (String)session.getAttribute("UserId");
		
		// DTO에 저장
		DataBoardDTO dto = new DataBoardDTO();
		dto.setIdx(idx);
		dto.setTitle(title);
		dto.setContent(content);
		
		System.out.println("idx: " + idx);
	    System.out.println("title: " + title);
	    System.out.println("content: " + content);
	    System.out.println("originalFileName: " + originalFileName);
	    System.out.println("prevOfile: " + prevOfile);
	    System.out.println("prevSfile: " + prevSfile);
		
		/*
		 수정페이지에서는 첨부파일을 등록하지 않을 수도 있으므로 파일이 있을 때와
		 없을 때를 구분해서 DTO를 설정해야한다.
		 */
		if (originalFileName != "") {
			// 첨부파일이 있는 경우에는 저장도니 파일명을 새롭게 변경한다.
			String savedFileName = FileUtil.renameFile(saveDirectory, originalFileName);
			
			// 새롭게 등록한 파일의 정보를 DTO에 추가한다.
			dto.setOfile(originalFileName); // 원래 파일 이름
			dto.setSfile(savedFileName); // 서버에 저장된 파일 이름
			
			// 기존 파일 삭제
			FileUtil.deleteFile(req, "/binggrae/Uploads", prevSfile);
		} else {
			// 첨부파일이 없으면 기존 파일명 유지
			dto.setOfile(prevOfile);
			dto.setSfile(prevSfile);
		}
		
		// DB에 수정 내용 적용
		DataBoardDAO dao = new DataBoardDAO();
		int result = dao.updatePost(dto);
		dao.close();
		
		if (result == 1) {
			resp.sendRedirect("../databoard/view.do?idx=" + idx);
		} else {
			// 실패하면 경고창을 띄우고 이동한다.
			JSFunction2.alertLocation(resp, "수정에 실패하였습니다.", 
					"../databoard/view.do?idx=" + idx);
		}
		
	}
	
}
