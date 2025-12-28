<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #0000FF}
.style2 {color: #00FF00}
.style3 {font-weight: bold}
.style4 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html">Secure Data Transfer<small>and Deletion from Counting Bloom Filter in Cloud Computing</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
          <li class="active"><a href="CloudServer.html"><span>CloudServer</span></a></li>
          <li><a href="EndUser.html"><span>EndUser</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="313" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <%
String name = null;
	String a = (String) application.getAttribute("cloudName");


	String s = a, usr2 = "";


	//Rackspace
//Amazon S3
//Windows Azure
//Aliyun OSS
	
	if (!(a.equalsIgnoreCase("Amazon S3") || a.equalsIgnoreCase("Windows Azure") || a
			.equalsIgnoreCase("Aliyun OSS"))) {
		usr2 = a;

		application.setAttribute("ocn", usr2);
%>

<h2 class="style4">Welcome To <%=usr2%> Cloud Server Control Panel</h2>

<span class="style4">
<%
	}

	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Windows Azure") || a
			.equalsIgnoreCase("Aliyun OSS"))) {

		
		String b=(String)application.getAttribute("cnames2");
		usr2 = b;
		application.setAttribute("ocn", usr2);
		%>
		</span>
<h2 class="style4">Welcome To <%=usr2%> Control Panel</h2>

		<span class="style4">
		<%
	}
	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Amazon S3") || a
			.equalsIgnoreCase("Aliyun OSS"))) {

		
		String c=(String)application.getAttribute("cnames3");
		usr2 = c;
		application.setAttribute("ocn", usr2);
		%>
		</span>
		<h2 class="style4">Welcome To <%=usr2%> Control Panel</h2>

		<span class="style4">
		<%
	}
	if (!(a.equalsIgnoreCase("Rackspace") || a.equalsIgnoreCase("Amazon S3") || a
			.equalsIgnoreCase("Windows Azure"))) {

		
		String d=(String)application.getAttribute("cnames4");
		usr2 = d;
		application.setAttribute("ocn", usr2);
		%>
		</span>
		<h2 class="style4">Welcome To <%=usr2%> Control Panel</h2>

		<%
	}
%>
        
        
            <p class="infopost"><span class="style3 style2">CloudServer  </span>&nbsp;&nbsp;|<span class="style1">&nbsp;&nbsp;Control Panel </span></p>
            <div align="center">
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p><img src="images/gal6.jpg" width="374" height="186" />
                </p>
            </div>
            <div class="img"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
           <h2 class="star"><span>Cloud Menu</span></h2>
           <div class="clr"></div>
          <ul class="sb_menu style3">
		  
		  <li><a href="ViewDataOwners.jsp">View Data Owners</a></li>
			<li><a href="ViewUsers.jsp">View Users</a></li>
            <li><a href="GetThreshold.jsp">View Threshold Details</a></li>
            <li><a href="GetVMR.jsp">VM Resources</a></li>
            <li><a href="ViewMigrateDetails.jsp">View Transfer Cloud</a></li>
            
            <li><a href="ViewCloudFiles.jsp">View All Files</a></li>
  			<li><a href="MemoryUtil.jsp">View Memory Utillization</a></li>
  			<li><a href="ViewAttackers.jsp">View All Attackers</a></li>
  			<li><a href="UnblockUser.jsp">UnRevoke Vendor</a></li>
            <li><a href="index.html">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
