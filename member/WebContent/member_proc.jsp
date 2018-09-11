<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <%
    String _checkmail = request.getParameter("checkmail");
    String checkmail = "";
    String _checksms = request.getParameter("checksms");
    String checksms = "";
        
    if(_checkmail == null)
      checkmail = "메일 수신 동의 안함";
    else
      checkmail = "메일 수신 동의함";   	  
    
    if(_checksms == null)
      checksms = "SMS 수신 동의 안함";
    else
      checksms = "SMS 수신 동의함";
  %>

  <body>
    <H1>회원가입</H1>
    <H3>ID : <%=request.getParameter("id")%></H3>
    <H3>암호 : <%=request.getParameter("pass")%></H3>
    <H3>이름 : <%=request.getParameter("name")%></H3>
    <H3>별명 : <%=request.getParameter("nickname")%></H3>
    <H3>생일 : <%=request.getParameter("birth")%></H3>
    <H3>email : <%=request.getParameter("email1")+"@"+request.getParameter("email2")%></H3>
    <H3>성별 : <%=request.getParameter("gender")%></H3>
    <H3>대표연락처 : <%=request.getParameter("tel11")+"-"+request.getParameter("tel12")+"-"+request.getParameter("tel13")%></H3>
    <H3>추가연락처 : <%=request.getParameter("tel21")+"-"+request.getParameter("tel22")+"-"+request.getParameter("tel23")%></H3>
    <H3>주소 : <%=request.getParameter("add1")+" "+request.getParameter("add2")+" "+request.getParameter("add3")%></H3>
    <H3>메일수신확인 : <%=checkmail%></H3>
    <H3>SMS수신확인 : <%=checksms%></H3>
    <H3>소개 : <%=request.getParameter("memo")%></H3>    
  </body>
</html>