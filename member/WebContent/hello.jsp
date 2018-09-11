<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <table border=1>
    <%
      for(int i=0; i< 10; i++) {
    %>      
        <tr>
          <td> number </td>
          <td> <%= i %> </td>
        </tr>
    <% 
      }
    %>
    </table>
    <hr>
    <%
      for(int i=0; i< 10; i++) {
        out.println(i); 
      }
    %>
    <hr>
        안녕하세요 현재 시간은 <%= new java.util.Date() %> 입니다.  <br><br>
    <%
      java.util.Date date = new java.util.Date() ;
    %>
        안녕하세요 현재 시간은 <%= date %> 입니다. <br>
    <%
      out.println(date);
    %>            
  </body>
</html>