<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <%
      for(int i=1; i<=7; i++)
        out.println("<font size="+i+">"+"size "+i+" : 안녕하세요</font><br>");
    %>
  </body>
</html>