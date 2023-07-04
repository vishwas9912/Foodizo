<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%! Connection con=null; %>
<%! Statement st= null; %>
<%! ResultSet rs= null; %>
<%! String str1; %>
<%! String str2; %>
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
}catch(ClassNotFoundException ce){out.println(ce);}
try{
con = DriverManager.getConnection("jdbc:mysql://localhost/login data","root", "");
st = con.createStatement();
str1=request.getParameter("gmail");
str2=request.getParameter("pass");
rs = st.executeQuery("SELECT * from users WHERE gmail='"+str1+"'");
if(rs.next()) {
String uname = rs.getString(1);
String lname = rs.getString(2);  
String gmail = rs.getString(3);
String pass = rs.getString(4);
if(str1.equals(gmail))
     {
      out.println("WELCOME");  
      if(pass.equals(str2))
      {
          out.println(uname);
      }
      else
      {
        String redirect="register.jsp";
        response.sendRedirect(redirect);
        }
     }
      else
  { 
   String redirect="register.jsp";
  response.sendRedirect(redirect);
  }
}
rs.close();
st.close();
con.close();
}catch(SQLException exception){
out.println("<!--");
StringWriter sw = new StringWriter();
PrintWriter pw = new PrintWriter(sw);
exception.printStackTrace(pw);
out.print(sw);
sw.close();
pw.close();
out.println("-->");
}
%>
