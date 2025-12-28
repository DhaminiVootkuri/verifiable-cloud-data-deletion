<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Alter</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #0000FF
}

.style2 {
	color: #00FF00
}
.style3 {font-weight: bold}
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
	<li><a href="index.html"><span>Home Page</span></a></li>
	<li><a href="DataOwner.html"><span>Data Owner </span></a></li>
	<li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
	<li class="active"><a href="CloudServer.html"><span>CloudServer</span></a></li>
	<li><a href="EndUser.html"><span>EndUser</span></a></li>
</ul>
</div>
<div class="clr"></div>
<div class="slider">
<div id="coin-slider"><a href="#"><img src="images/slide1.jpg"
	width="960" height="313" alt="" /> </a> <a href="#"><img
	src="images/slide2.jpg" width="960" height="313" alt="" /> </a> <a
	href="#"><img src="images/slide3.jpg" width="960" height="313"
	alt="" /> </a></div>
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
	////t42,t4,cloud,oper
	String mem = request.getParameter("t42");
	String cost = request.getParameter("t4");
	String cname = request.getParameter("cloud");
	String oper=request.getParameter("oper");
	String tbl="";
		if (cname.equalsIgnoreCase("Rackspace")) {
			tbl = "charm_rvmcost";
		} else if (cname.equalsIgnoreCase("Amazon S3")) {
			tbl = "charm_Avmcost";
		} else if (cname.equalsIgnoreCase("Windows Azure")) {
			tbl = "charm_Wvmcost";
		} else if (cname.equalsIgnoreCase("Aliyun OSS")) {
			tbl = "charm_AOvmcost";
		} 
   	int s=(Integer)application.getAttribute("id");
	
	if(oper.equalsIgnoreCase("Update"))
	{
		String query="update "+tbl+" set cost='"+cost+"',memory='"+mem+"' where id='"+s+"' and cname='"+cname+"'";
		Statement st=connection.createStatement();
		st.executeUpdate(query);
		%>
		      <p class="infopost"><span class="style3 style2">Resources  </span>&nbsp;&nbsp;|<span class="style1">&nbsp;&nbsp;Details</span></p>
            <div class="clr"></div>
		<h2>Updated SuccessFully</h2>
		<%
	}
	
	if(oper.equalsIgnoreCase("Delete"))
	{
		String query="Delete from "+tbl+" where id='"+s+"' and memory='"+mem+"' and cname='"+cname+"'";
		Statement st=connection.createStatement();
		st.executeUpdate(query);
		%>
		       <p class="infopost"><span class="style3 style2">Resources  </span>&nbsp;&nbsp;|<span class="style1">&nbsp;&nbsp;Details</span></p>
            <div class="clr"></div>
		<h2>Deleted SuccessFully</h2>
		<%
	}
	
	
%>
<h3><a href="CloudServerMain.jsp">Back</a></h3>
</div>
</div>
<div class="sidebar">
<div class="searchform">
<form id="formsearch" name="formsearch" method="post" action="#">
<span> <input name="editbox_search" class="editbox_search"
	id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
</span> <input name="button_search" src="images/search.gif"
	class="button_search" type="image" /></form>
</div>
<div class="clr"></div>
<div class="gadget">
<h2 class="star"><span>Cloud Menu</span></h2>
<div class="clr"></div>
<ul class="sb_menu">
            <li><strong><a href="GetThreshold.jsp">Threshold</a></strong></li>
            <li><strong><a href="GetVMR.jsp">VM Resources</a></strong></li>
            <li><strong><a href="ViewMigrateDetails.jsp">Migrate Cloud</a></strong></li>
            <li><strong><a href="ViewDataOwners.jsp">View DataOwners</a></strong></li>
            <li><strong><a href="ViewCloudFiles.jsp">View All Files</a></strong></li>
  			<li><strong><a href="MemoryUtil.jsp">View Memory Utillization</a></strong></li>
  			<li><strong><a href="ViewAttackers.jsp">View All Attackers</a></strong></li>
  			<li><strong><a href="UnblockUser.jsp">Revoke Vendor</a></strong></li>
            <li><strong><a href="index.html">Log Out</a></strong></li>
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
<div style="clear: both;"></div>
</div>
</div>
</div>
<div align=center></div>
</body>
</html>
