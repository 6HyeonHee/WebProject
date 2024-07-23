package freeboard;

import java.io.IOException;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction2;

/*
 비회원제 게시판은 인증절차 없이 누구나 들어올 수 있으므로 수정, 삭제를
 위해서는 본인 확인 절차가 필요하다. 따라서 패스워드를 통해 검증한 후
 수정 혹은 삭제 처리를 해야한다.
 */
@WebServlet("/mvcboard/deleteorupdate.do")
public class FreeDeleteCtrl extends HttpServlet {

	/*
	 검증 페이지로 진입할 때는 링크를 통해서 하게되므로 get방식의 요청을 처리하면 된다.
	 진입 시 파라미터로 전달되는 mode와 일련번호를 받아야한다.
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		/*
		 첫번째 파라미터는 컨트롤러에서 받은 후 request영역에 저장해서 JSP로 전달한다.
		 */
		req.setAttribute("mod", req.getParameter("mode"));
		req.getRequestDispatcher("/binggrae/freeboard-view.jsp").forward(req, resp);
	}
	
	// 패스워드 검증 페이지에서 전송한 값을 통해 레코드 검증
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 전송된 파라미터 받기
		String idx = req.getParameter("idx");
		String UserId = req.getParameter("UserId");
		String mode = req.getParameter("mode");
		
		// 아이디 검증
		FreeBoardDAO dao = new FreeBoardDAO();
		// 일련번호와 아이디에 일치하는 게시물이 있는지 확인
		boolean confirmed = dao.confrimUserId(UserId, idx);
		dao.close();
		
		// 아이디가 일치하면
		if (confirmed == true) {
			// 수정인 경우 처리
			if (mode.equals("edit")) {
				HttpSession session = req.getSession();
				resp.sendRedirect("../freeboard/edit.do?idx=" + idx);
				/*
				 session 영역에 저장된 속성값은 페이지를 이동하더라도
				 공유되므로 이동한 페이지에서 참조할 수 있다.
				 */
			}
			// 삭제인 경우 처리
			else if (mode.equals("delete")) {
				// 기존 게시물의 내용을 가져온다.
				dao = new FreeBoardDAO();
				FreeBoardDTO dto = dao.selectView(idx);
				// 게시물 삭제 처리
				int result = dao.deletePost(idx);
				dao.close();
				// 게시물이 삭제되었다면 ..
				if (result == 1) {
					// DB에 저장된 파일명을 인출한 후 ..
					String saveFileName = dto.getSfile();
					// 서버에서 파일을 삭제한다.
					FileUtil.deleteFile(req, "/binggrae/Uploads", saveFileName);
				}
				// 정상적으로 삭제되었다면 목록으로 이동한다.
				JSFunction2.alertLocation(resp, "삭제되었습니다", "../freeboard/list.do");
			}
		} else {
			// 비밀번호가 틀린 경우 경고창을 띄우고 뒤로 이동한다.
			JSFunction2.alertBack(resp, "로그인 해주세요");
		}
	}
}
