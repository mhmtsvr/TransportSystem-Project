<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>


<%
	//FOR EACH NEW CONTACT MESSAGE 
String [] recepients =new String[]{"mehmetipeksever@gmail.com"};
String [] bccRecepients =new String[]{"mehmetipeksever@gmail.com"};

 try {
 
String name= request.getParameter("name");
String email= request.getParameter("email");
String phone= request.getParameter("phone");
String message= request.getParameter("message");
 
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.24:1521:xe","system","redhat");

PreparedStatement ps=con.prepareStatement("insert into quizcontact values(?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,message);
//**Sending a Notification Email to Admins**
new com.javaproject.SendEmail().sendMail(recepients, bccRecepients, "New Message Notification | Contact", "You just received a message please check admin panel for further details.\n\nMessage:\n" + message +"\nFrom: " + name);
int s= ps.executeUpdate();
if(s>0){
%>
<jsp:forward page="home.jsp"></jsp:forward>
<% 
}
else{
out.print("sorry!please fill correct detail and try again" );
}
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}

%>

