<%

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=CST";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use product";
//con.createStatement().execute(sql);

%>