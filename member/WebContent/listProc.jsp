<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>MySQL Test</title> 
  </head>

  <body>
    <h1>인터넷 서점</h1>
    <h3>제목을 입력하세요 :</h3>
    <form action="" method="post">
            책 제목 : <input type="text" name="title">
      <input type="submit" name="검색"><br>
    </form>
    <br><br>
    <%
      String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      String DB_URL = "jdbc:mysql://localhost/book_db";    
      String USERNAME = "root";
      String PASSWORD = "root";
    
      Connection conn = null;
      Statement stmt = null;
      String sbook = request.getParameter("title");
      if(sbook != null && !sbook.isEmpty()) {
          try{
        	Class.forName(JDBC_DRIVER);
        	conn = DriverManager.getConnection(DB_URL,USERNAME,PASSWORD);    	
        	stmt = conn.createStatement();
        	String sql;         
        	sql = "SELECT * FROM book_table where title like '%" + sbook + "%'";
          
        	ResultSet rs = stmt.executeQuery(sql);
            out.print("<form action=\"orderProc.jsp\" method=\"post\">");
            out.print("<table border=1 cellpadding=3 cellspacing=3>");
            out.print("<th>주문</th>");
            out.print("<th>"+"책제목"+"</th><th>"+"저자 "+"</th><th>"+"가격"+"</th><th>"+"수량"+"</th></tr>");
        	while(rs.next()){
        	   String _i = rs.getString("id");
        	   String _t = rs.getString("title");
        	   String _a = rs.getString("author");
        	   String _p = rs.getString("price");
        	   String _q = rs.getString("qty");
             
               out.print("<tr>");
               out.print("<td><input type=\"checkbox\" name=\"id\" value="+_i+">"+"</td>");
        	   out.print("<td>"+_t+"</td><td>"+_a+"</td><td>"+_p+"</td><td>"+_q+"</td></tr>");
        	}
            out.print("</table>");
        	rs.close();
        	stmt.close();
        	conn.close();
          }catch(SQLException se1){
        	 se1.printStackTrace();
          }catch(Exception ex){
        	 ex.printStackTrace();
          }finally{
        	 try{
        	   if(stmt!=null)
        		  stmt.close();
        	 }catch(SQLException se2){ }
        	 try{
        	   if(conn!=null)
        		  conn.close();
             }catch(SQLException se){
        	      se.printStackTrace();
             }
          }   
     }
     out.print("<br>");
     out.print("<input type=\"submit\" value=\"주문\">");
     out.print("<input type=\"reset\" value=\"취소\">");
     out.print("</form>");
    %>
     
  </body>
</html>