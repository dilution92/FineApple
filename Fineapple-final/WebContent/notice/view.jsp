<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="notice.NoticeVo"%>
<%@page import="notice.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<script type="text/javascript" src="../js/notice.js"></script>

</head>
<body>
<jsp:useBean id="dao" class="notice.NoticeDao"/>

<!-- header -->
	<jsp:include page="/main/header.jsp"/>

	<%
	int noticeNo = 0;
	if(request.getParameter("noticeNo") != null) {
		noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
	}
	
	NoticeVo notice = new NoticeDao().view(noticeNo);
	request.setAttribute("notice", notice);
		
	%>
<div class = 'notice-container'>
			<div class = 'notice_view'>
				<table >
					<tr>
						<th scope='row'>제목</th>
						<td>${notice.noticeSubject }</td>
					</tr>
					<tr>
						<th scope='row'>작성일</th>
						<td>${notice.noticeDate }</td>
					</tr>
					<tr>
						<th scope='row'>조회수</th>
						<td>${notice.noticeHit }</td>
					</tr>
					<tr class = 'view'>
						<td colspan ='2'>
							<div class ='content'>
								<%if(notice.getNoticeNo() == 9){ %>
								<img src = '../images/notice/notice_photo9.jpg'/>
								<%} %>
								
								<%if(notice.getNoticeNo() == 8){ %>
								<img src = '../images/notice/notice_photo8.PNG'/>
								<%} %>
								
								<%if(notice.getNoticeNo() == 7){ %>
								<img src = '../images/notice/notice_photo7_1.PNG'/>
								<img src = '../images/notice/notice_photo7_2.PNG'/>
								<%} %>
								
								<%if(notice.getNoticeNo() == 6){ %>
									<div class = 'content_text'>
									업데이트예정
									</div>
								<%} %>
								
								<%if(notice.getNoticeNo() == 5){ %>
									<div class = 'content_text'>
									안녕하세요. FineApple 입니다.<br>
									고객님들께 보다 나은 서비스 제공을 위한 시스템 점검이 진행될 예정입니다.<br>
									시스템 점검 기간 동안 일시적으로 사이트 회원가입, 결제, 게시판 글작성 등 이용이 불가하오니 아래 점검 일정 참고 부탁드립니다.<br><br>
									■ 점검 시간 : 2020. 10. 20(화) 05:00 ~ 06:00<br><br>
									사이트 이용에 불편을 드린 점 널리 양해 부탁드리며, 앞으로 더 나은 서비스 제공을 위해 최선을 다하겠습니다.<br>
									감사합니다.
									</div>
								<%} %>
								
								<%if(notice.getNoticeNo() == 4){ %>
								<img src = '../images/notice/notice_photo4.png' width = 800px/>
								<%} %>
								
								<%if(notice.getNoticeNo() == 3){ %>
									<div class = 'content_text'>
									업데이트예정
									</div>								
								<%} %>
								
								<%if(notice.getNoticeNo() == 2){ %>
								<img src = '../images/notice/notice_photo2.PNG'/>
								<%} %>
								
								<%if(notice.getNoticeNo() == 1){ %>
									<div class = 'content_text'>
									업데이트예정
									</div>
								<%} %>
								
								
								
							</div>				
						</td>
					</tr>
				</table>
			</div>
</div>
			
	
<!-- buttons -->
	<div class = 'btns'>
	
		<input type = 'hidden' value = '삭제'  name = 'btnDelete' id = 'btnDelete' />
		<input type = 'hidden' value = '수정'  name = 'btnModify' id = 'btnModify' />
		<%if(session.getAttribute("mid").equals("kim")){ //mid의 속성이 없으면 로그인 이전화면
	%> 
		<input type = 'button' value = '삭제'  name = 'btnDelete' id = 'btnDelete' />
		<input type = 'button' value = '수정'  name = 'btnModify' id = 'btnModify' />
		<%} %>
		<input type = 'button' value = '목록'  name = 'btnSelect' id = 'btnSelect' onClick = "history.back()"/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>