package freeboard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction2;

@WebServlet("/freeboard/delete.do")
public class FreeDeleteCtrl extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setAttribute("UserId", req.getParameter("UserId"));
		req.getRequestDispatcher("/binggrae/freeboard-edit.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		// 파라미터로 idx를 받아옴.
		String idx = req.getParameter("idx");
		
		FreeBoardDAO dao = new FreeBoardDAO();
		FreeBoardDTO dto = dao.selectView(idx);
		
		String sessionId = (String) session.getAttribute("UserId");		
		
		
		int result = dao.deletePost(idx);
		dao.close();
		if (sessionId.equals(dto.getId())) {
			if (result == 1) {
				JSFunction2.alertLocation(resp, "게시물이 삭제되었습니다.",
						"../freeboard/list.do");
				System.out.println(dto +"====");
			}
			else {
				//실패하면 경고창을 띄우고 이동한다.
				JSFunction2.alertLocation(resp, "게시물 삭제에 실패하였습니다.",
						"../freeboard/view.do?idx=" + idx);
			}
		}
		else {
			JSFunction2.alertBack(resp, "작성자 본인만 삭제 가능합니다.");
		}
	}
}
