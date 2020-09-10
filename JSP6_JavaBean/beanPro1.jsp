<%@page import="jsp6.BeanDB"%>
<%@page import="jsp6.BeanTest1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/jsp6/beanPro.jsp</h1>

<%
//한글처리
request.setCharacterEncoding("utf-8");

// String name, int num 파라미터 가져오기
String name = request.getParameter("name");
int num = Integer.parseInt(request.getParameter("num"));


// 하나의 바구니(name, num) 담아서 전달 => 자바빈 JavaBean(JavaDTO(Data Transfer Object))
// 패키지 jsp6 자바파일 BeanTest1 만들기  
//BeanTest1 클래스 정의 => 사용하기 위해서 객체생성(기억장소 할당)
BeanTest1 bt1 = new BeanTest1();




//파라미터 name, num => BeanTest1 멤버변수 num, name 저장
// bt1.name=name; --> private name변수 데이터 은닉

bt1.setName(name); //setName은 public으로 정의됨 // public setName()통해서 파라미터 값 전달받아 name멤버변수에 저장
bt1.setNum(num); //set



// 디비 작업 => 자바파일 메서드 호출(하나의 바구니) => insert 작업

// 디비작업 패키지 jsp6 파일이름 BeanDB 


// BeanDB 사용하기위해서 객체 생성(기억장소 할당)
BeanDB db1 = new BeanDB();

//insert 호출
db1.insert(bt1);


%>

</body>
</html>