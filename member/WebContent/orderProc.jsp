<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>주문처리 화면</title>
    </head>

    <body>
        <h1>인터넷 서점</h1>
        <h3>주문해주셔서 감사합니다.</h3>
        <%
            String[] ids = request.getParameterValues("id");
	        if (ids != null) {
        %>
        <%
            	String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        		String DB_URL = "jdbc:mysql://localhost:3306/book_db";
        		String USERNAME = "root";
        		String PASSWORD = "root";
        		Class.forName(JDBC_DRIVER);
        		Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        		Statement stmt = conn.createStatement();
        		String sqlStr;
        		int recordUpdated;
        		ResultSet rset;
        %>
        <table border="1" cellpadding="2" cellspacing="2">
            <tr>
                <th>저자</th> <th>제목</th> <th>가격</th> <th>수량</th> 
            </tr>
        <%
                out.print(Arrays.toString(ids));
            	for (int i = 0; i < ids.length; i++) {
                    sqlStr = "update book_table set qty = qty-1 where id=" + ids[i];
           			recordUpdated = stmt.executeUpdate(sqlStr);
            	
        	   	    sqlStr = "select * from book_table where id=" + ids[i];
        		    rset = stmt.executeQuery(sqlStr);
    
        		    while (rset.next()) {
        %>
            <tr>
                <td><%=rset.getString("title")%></td>
                <td><%=rset.getString("author")%></td>
                <td><%=rset.getInt("price")%></td>
                <td><%=rset.getInt("qty")%></td>
            </tr>
        <%
            	    }
        		    rset.close();
            	}       			
       			stmt.close();
           		conn.close();
       		}    		
        %>
        </table>
        <a href="listProc.jsp"><h3>주문화면으로 돌아가기</h3></a>
    </body>
</html>