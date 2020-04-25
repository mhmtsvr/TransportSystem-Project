<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>High Performance Transportation</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
	
</head>

<body>

  <div id="outer">
    <div id="wrapper">
      <div id="body-bot">
        <div id="body-top">
          <div id="logo">
            <h1>High Performance Transportation</h1>
            <p>We care about your cargo</p>
          </div>
          <div id="nav">
            <ul>
              <li><a href="home.jsp">HOME</a></li>
              <li><a href="ritruck.jsp">RECENTLY INSTALLED TRUCKS</a></li>
              <li><a href="status.jsp">STATUS</a></li>
              <li><a href="services.jsp">SERVICES</a></li>
              <li><a href="contactus.jsp">CONTACT US</a></li>
            </ul>
            <div class="clear"> </div>
          </div>
		  
		  <div id="page-title">
				  <span>
					 <h2 style="color:#4f7202;">MOST CONVINIENT & RELIABLE</h2>
					 <h2 style="color:#4f7202;">TRANSPORT SERVICES</h2>
				   </span>
				 
				  
		  </div>
		  
          <div id="gbox">
            <div id="gbox-top"> </div>
            <div id="gbox-bg">
              <div id="gbox-grd">
                <h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>
				<p>You can find All the Information regarding our transport company's services ,Trucks and can contact us to get your vehicle installed in our company</p>

<p>You can find how many vehicle is on road through my company to your city or closest to it</p>
                
                
                <div id="newsletter">
                  <h2>Login Form</h2>
                  
                  <%
                  if(request.getAttribute("notlogin_msg")!=null){
                  
                  out.print(request.getAttribute("notlogin_msg"));
                  }
                   %>
                  
                  <%
                  if(request.getAttribute("Error")!=null){
                  
                  out.print(request.getAttribute("Error"));
                  }
                   %>
                  <form action="loginprocess.jsp" method="get" accept-charset="utf-8">
                   <select name="branch">
                   <option >Select a Branch</option>
                    <option>Toronto</option>
                    <option>Montreal</option>
					<option value="Mississauga">Mississauga</option>
					<option value="Hamilton">Hamilton</option>
                    </select><br/>
                    Username:<input type="text" name="username"/>
                    Password:<input type="password" name="userpass"/>
                    <input type="submit" value="Login"><a href="test.jsp">Login as Admin</a>
                  </form>
                 
                </div>
                
                <div class="clear"> </div>
                
              </div>
            </div>
            <div id="gbox-bot"> </div>
          </div>
		   
          <div id="greybox" >
             
			 
			
          </div>
		  
        </div>
      </div>
    </div>
  </div>
  
  <div id="copyright">
   Copyright 2020 ,All Rights Reserved, High Performance Team
  </div>

</body>
</html>
