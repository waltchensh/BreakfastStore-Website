
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*"%>
<html>
<head>
<title>create database</title>
</head>
<body>

<%
try {
//Step 1: ���J��Ʈw�X�ʵ{�� 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: �إ߳s�u 	
        String url="jdbc:mysql://localhost/?serverTimezone=CST";
        String sql="use product";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("�s�u�إߥ���");
        else {
//Step 3: ��ܸ�Ʈw   
           sql="use product";
           con.createStatement().execute(sql);
//Step 4: ���� SQL ���O, �Y�n�ާ@�O����, �ݨϥ�executeQuery, �~��Ǧ^ResultSet	
           sql="select * from counter"; //��X�@�X���d��
           ResultSet rs=con.createStatement().executeQuery(sql);
		    while(rs.next())
                {
					
					int x=Integer.parseInt(rs.getString("count"));
					if (session.isNew())
					{
                    x++;
              
					}
					out.print("�A�O��"+x+"��X��");
				}
				
					  sql = "UPDATE `counter` SET `count`='"+x+"' where count='"+x+"'";

		  
		  
		   con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL���~");
    }
}
catch (ClassNotFoundException err) {
      out.println("class���~");
}
		   
%>


</body>
</html>
