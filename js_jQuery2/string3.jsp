<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <h1>js_jQuery2/string3.jsp</h1> -->
<%
String id=request.getParameter("id");

//1단계 드라이버 불러오기
Class.forName("com.mysql.jdbc.Driver");
//2단계 디비연결
String dbUrl = "jdbc:mysql://localhost:3306/jspdb1?serverTimezone=Asia/Seoul&useSSL=false";
//		
		String dbUser = "jspid";
		String dbPass = "jsppass";
		Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
// DAO 불러오기




//3단계 sql member table 조건  id 일치하는지? 
String sql = "select * from member where id=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, id);

//4 단계  rs <= 실행
ResultSet rs = pstmt.executeQuery();
// 5단계  rs첫행으로 이동 데이터 있으면 일치하면   "아이디중복"
//                       없으면                "아이디 사용가능"


// 	out.println(rs.next());
if(rs.next()){
// 	out.println(rs.next());
// 	if(rs.getString("id").equals(id)){
	
		
	
	// 아이디 중복
	out.println("아이디 중복됨");
	
	
	
	
// }else{
	//아이디 사용 가능
}else{
	out.println("아이디 사용 가능함!!");
}
// }


// String pass=request.getParameter("pass");
%>
<%-- 아이디 :<%=id%>,비밀번호 : <%=pass%> --%>