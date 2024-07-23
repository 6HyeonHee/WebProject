package freeboard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/freeboard/view.do")
public class FreeViewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
											throws ServletException, IOException {
		
		FreeBoardDAO dao = new FreeBoardDAO();
		String idx = req.getParameter("idx");
		dao.updateVisitCount(idx);
		
		FreeBoardDTO dto = dao.selectView(idx);
		dao.close();
		if(dto.getContent() != null)
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br />"));
		
				
		// 게시물이 저장된 DTO 객체를 request 영역에 저장하고 JSP로 포워드한다.
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/binggrae/freeboard-view.jsp").forward(req, resp);
	}
}