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
String gmail=request.getParameter("gmail");
String pass=request.getParameter("pass");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
}catch(ClassNotFoundException ce){out.println(ce);}

try{
con = DriverManager.getConnection("jdbc:mysql://localhost/login data","root", "");
           Statement st=con.createStatement();
           int i=st.executeUpdate("UPDATE users SET pass='"+pass+"' WHERE gmail='"+gmail+"'");
           String redirect="http://localhost:8080/website/index.jsp";
           response.sendRedirect(redirect);
}catch(SQLException exception){}

%>