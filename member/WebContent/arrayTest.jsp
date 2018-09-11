<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <%
      String[] ns = {"홍길동","전우치","임꺽정"};
    
      for(int i=0; i<ns.length; i++) {
        out.println(ns[i] + "<br>");
      }
    %>
    <hr>
    <%
      ArrayList<String> sl = new ArrayList<String>();
      sl.add("홍길동");
      sl.add("전우치");
      sl.add("임꺽정");
      for(int i=0; i<sl.size(); i++) {
          out.println(sl.get(i) + "<br>");
        }
    %>
    <hr>
    <%
      double r = Math.random();
    %>
    <%
      if(r >= 0.6)
        out.print("<div style=\"color:red\">오늘은 좋은 행운의 날입니다" + r + "</div>");
      else
        out.print("<div> 오늘은 보통 행운의 날입니다" + r + "</div>");
    %>
    <br>
    <a href="<%= request.getRequestURI() %>">다시 하기 </a>
   
  </body>
</html>