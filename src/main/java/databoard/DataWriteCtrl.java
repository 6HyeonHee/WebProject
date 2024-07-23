package databoard;

import java.io.IOException;
import java.util.ArrayList;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction2;

@WebServlet("/databoard/write.do")
@MultipartConfig(
		maxFileSize = 1024 * 1024 * 10,
		maxRequestSize = 1024 * 1024 * 100
)
public class DataWriteCtrl extends HttpServlet {


	/*
	 글쓰기 페이지로 진입할 때는 다른 로직없이 포워드만 진행한다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/binggrae/databoard-write.jsp").forward(req, resp);
	}
	
	/*
	 글쓰기는 post방식의 전송이므로 doPost()에서 요청을 처리한다.
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// 업로드 디렉토리의 물리적 경로 확인
		String saveDirectory = req.getServletContext().getRealPath("/binggrae/Uploads");
		
	

		// 파일 업로드
		String originalFileName = "";
		try {
			// 업로드가 정상적으로 완료되면 원본파일명을 반환한다.
			originalFileName = FileUtil.uploadFile(req, saveDirectory);
		} catch (Exception e) {
			e.printStackTrace();
			/*
			 파일 업로드 시 오류가 발생되면 경고창을 띄운 후 작성페이지로 이동한다.
			*/
			JSFunction2.alertLocation(resp, "파일 업로드 오류입니다.",
					"../databoard/write.do");
			return;
		}
		// 세션에서 사용자 ID 가져오기
	    HttpSession session = req.getSession();
	    String userId = (String) session.getAttribute("UserId");		
		
		// 파일 외 폼값을 DTO에 저장한다.
		DataBoardDTO dto = new DataBoardDTO();
		dto.setTitle(req.getParameter("title"));
		dto.setContent(req.getParameter("content"));
		dto.setId(userId);
		
		System.out.println(req.getParameter("title"));
		System.out.println(req.getParameter("content"));
		
		// 유효성 검사 추가
        if (dto.getTitle() == null || dto.getTitle().isEmpty() || 
            dto.getContent() == null || dto.getContent().isEmpty()) {
            JSFunction2.alertLocation(resp, "제목과 내용을 모두 입력해주세요.", "../databoard/write.do");
            return;
        }
		
		// 첨부파일이 정상적으로 등록되어 원본파일명이 반환되었다면
		if (originalFileName != "") {
			// 파일명을 "날짜_시간.확장자" 형식으로 변경하고..
			String savedFileName = FileUtil.renameFile(saveDirectory, originalFileName);
			// 원본파일명과 저장된 파일명을 DTO에 저장한다.
			dto.setOfile(originalFileName);
			dto.setSfile(savedFileName);
		}
				

		
		// DAO를 통해 DB에 값을 입력한다.
		DataBoardDAO dao = new DataBoardDAO();
		int result = dao.insertWrite(dto);
		dao.close();
		
		// insert에 성공한 경우에는 목록으로 이동하고 실패이면 쓰기페이지로 이동한다.
		if (result == 1) {
			resp.sendRedirect("../databoard/list.do");
		} else {
			JSFunction2.alertLocation(resp, "글쓰기에 실패했습니다.", "../databoard/write.do");
		}
	}
	
	
	
}
