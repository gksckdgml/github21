<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <%!
      int day = 3;
    
      String getDayCheck() {
     	if(day == 1 || day == 7)
    	  return "휴일";
    	else
    	  return "평일";        
      }
    %>
        오늘은 <%= getDayCheck() %> 입니다.
  </body>
</html>