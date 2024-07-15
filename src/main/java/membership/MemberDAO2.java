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

            // 값 출력하여 확인
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
}
