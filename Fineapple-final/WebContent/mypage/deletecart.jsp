<%@page import="product.ProductVo"%>
<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<%
//해당 상품정보 받아오기
System.out.println("deletecart 시작");
CartDao dao = new CartDao();
int product_serial=Integer.parseInt(request.getParameter("product_s"));
String member_id=(String)session.getAttribute("member_mid");


//카트 리스트에 추가하기
dao.deleteCart(product_serial,member_id);//카트 db에서 삭제
response.sendRedirect("../mypage/cart.jsp");

%>
</body>
</html>