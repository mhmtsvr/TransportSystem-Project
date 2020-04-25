<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");

String dateofbirth=request.getParameter("dob");
String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String branch=request.getParameter("branch");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.24:1521:xe","system","redhat");
PreparedStatement ps=con.prepareStatement("insert into payregister values(?,?,?,?,?,?)");

//ps.setInt(1,2);
ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,branch);
ps.setString(5,dateofbirth);
ps.setString(4,dateofjoining);
ps.setString(6,salary);
int s=ps.executeUpdate();
if(s>0){
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<% 
}
else{
out.print("sorry!please fill correct detail and try again" );
}
}catch(SQLException e2){
out.print("sorry!please fill correct detail and try again" );
e2.printStackTrace();
}
%>

