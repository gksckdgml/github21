<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
  </head>

  <body>
    <h3>좋아하는 과일을 선택하시오(다중선택 가능): </h3>
    <form method="get" >
      <input type="checkbox" name="fruit" value="apple" />사과
      <input type="checkbox" name="fruit" value="banana" />바나나
      <input type="checkbox" name="fruit" value="cherry" />체리
      <input type="submit" value="제출" />
    </form>
    <br>
    <%
        if(request.getParameter("fruit") != null ) {  
    	  String cb[] = request.getParameterValues("fruit");

      	  for(String c: cb)
            out.print(c + "<br>");
        }
        out.print("TEST");
    %>
    <h3>당신이 선택한 과일은 : </h3>
  </body>
</html>