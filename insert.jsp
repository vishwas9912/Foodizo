<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%! Connection con=null; %>
<%! Statement st= null; %>
<%! ResultSet rs= null; %>
<%! String str1;%> 
<%! String str2; %> 
<%! String str3; %>
<%! String str4; %>
<%
String uname=request.getParameter("uname");
String lname=request.getParameter("lname");
String gmail=request.getParameter("gmail");
String pass=request.getParameter("pass");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
}catch(ClassNotFoundException ce){out.println(ce);}

try{
con = DriverManager.getConnection("jdbc:mysql://localhost/login data","root", "");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into users(uname,lname,gmail,pass) values('"+uname+"','"+lname+"','"+gmail+"','"+pass+"')");
           out.println("Registration success");
           String redirect="http://localhost:8080/website/index.jsp";
           response.sendRedirect(redirect);
}catch(SQLException exception){}

%>