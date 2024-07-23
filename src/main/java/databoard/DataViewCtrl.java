package databoard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/databoard/view.do")
public class DataViewCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
											throws ServletException, IOException {
		
		DataBoardDAO dao = new DataBoardDAO();
		String idx = req.getParameter("idx");
		dao.updateVisitCount(idx);
		
		DataBoardDTO dto = dao.selectView(idx);
		dao.close();
		if(dto.getContent() != null)
		dto.setContent(dto.getContent().replaceAll("\r\n", "<br />"));
		
		// 파일의 확장자만 잘라서 request 영역에 저장
		String ext = dto.getSfile().substring(dto.getSfile().lastIndexOf("."));
		req.setAttribute("ext", ext);
				
		// 게시물이 저장된 DTO 객체를 request 영역에 저장하고 JSP로 포워드한다.
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("/binggrae/databoard-view.jsp").forward(req, resp);
	}
}