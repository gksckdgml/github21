<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <%!
      String getWeek(int data) {
        String rWeek="";
        switch(data) {
          case 0: rWeek = "일요일"; break;
          case 1: rWeek = "월요일"; break;
          case 2: rWeek = "화요일"; break;
          case 3: rWeek = "수요일"; break;
          case 4: rWeek = "목요일"; break;
          case 5: rWeek = "금요일"; break;
          case 6: rWeek = "토요일"; break;
        }        
        return rWeek;
      }
    %>
    <%=getWeek(3)%>
  </body>
</html>