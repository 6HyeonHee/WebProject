package freeboard;

import java.io.IOException;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/freeboard/download.do")
public class DownloadController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 파일 다운로드 링크를 통해 전달되는 3개의 파라미터
		String ofile = req.getParameter("ofile");	// 원본 파일명
		String sfile = req.getParameter("sfile");	// 저장된 파일명
		String idx = req.getParameter("idx");		// 게시물 일련번호
		
		// 다운로드 메서드 호출
		FileUtil.download(req, resp, "/binggrae/Uploads", sfile, ofile);
		
		// 다운로드 완료 후 카운트 증가
		FreeBoardDAO dao = new FreeBoardDAO();
		dao.downCountPlus(idx);
		dao.close();
	}
}
