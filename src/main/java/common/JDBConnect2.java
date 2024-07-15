package common;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletContext;

public class JDBConnect2 {
	
	// 멤버변수 : DB연결, 정적쿼리실행, 동적쿼리실행, select결과 반환
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	// 기본생성자 : 매개변수가 없는 생성자 - 첫번째 연결
	public JDBConnect2() {
		try {
			// 오라클 드라이버 로드
			String drv = "oracle.jdbc.OracleDriver";
			Class.forName(drv);
			// 커넥션 URL, 아이디, 패스워드 준비
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "binggrae";
			String pwd = "1234";
			// 데이터베이스 연결 시도
			con = DriverManager.getConnection(url, id, pwd);
			// Connection 인스턴스가 반환되면 연결 성공
			System.out.println("DB 연결 성공(기본 생성자)");
		} catch (Exception e) {
			System.out.println("DB 연결 실패(기본 생성자)");
			e.printStackTrace();
		}
	}
	
	// 인자 생성자1 : 4개의 매개변수를 선언 - 두번째 연결
	public JDBConnect2(String driver, String url, String id, String pwd) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(인수 생성자1)");
		} catch (Exception e) {
			System.out.println("DB 연결 실패(인수 생성자1)");
			e.printStackTrace();
		}
	}
	
	// 인자 생성자2 : Application 내장객체를 매개변수로 선언
	public JDBConnect2(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			String url = application.getInitParameter("OracleURL");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(인수 생성자2)");
		} catch (Exception e) {
			System.out.println("DB 연결 실패(인수 생성자2)");
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		} catch(Exception e) { 
			System.out.println("JDBC 자원 해제 실패");
			e.printStackTrace();
		}
	}
}
