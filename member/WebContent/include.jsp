<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>기타 항목</title>
  </head>

  <body>

    * jsp 태그
     - page 지시자 : <%@ page  %>
     - 스크립트let : <% %>
     - 표현식           : <%= %>
     - 선언문           : <%! %>
     - 주석문           : <%-- --%>
<%-- - include   : <%@ include file="" %>
     - import    : <%@ page import="" %>
--%>
    <hr>
    <%!
      Date date = new Date();

      Date getDate() {
        return date; 
      }
    %>
        현재 시간은 <%= getDate() %> 입니다.
    <hr>
    <h4>아래에 hello.jsp 파일을 포함시킨다.</h4>    
    <%@ include file="hello.jsp"%>    
  </body>
</html>