package membership;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/checkId")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        String userId = request.getParameter("user_id");
        int result = CheckId(userId);
        
        request.setAttribute("user_id", userId);
        request.setAttribute("result", result);
        
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
    
    private int CheckId(String uid) {
        // 여기에 ID 중복 체크 로직을 구현합니다.
        if ("입력하는 아이디".equals(uid)) {
            return 1; // 이미 사용 중인 아이디
        } else if (uid != null && !uid.isEmpty()) {
            return 0; // 사용 가능한 아이디
        } else {
            return -1; // 오류 발생
        }
    }
}
