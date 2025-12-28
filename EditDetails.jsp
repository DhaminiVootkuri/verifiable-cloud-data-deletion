<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.Statement"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Edit Details</title>
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
.style3 {color: #FFFF00}
.style5 {color: #FFFF00; font-weight: bold; }
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
          <p class="infopost"><span class="style3 style2">Resources  </span>&nbsp;&nbsp;|<span class="style1">&nbsp;&nbsp;Details</span></p>
            <div class="clr"></div>
            <br />
            <br />
        <%
    	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
    	int i=0,j=0,k=0;
    	try{
        	String cname=request.getParameter("cloudn");
       	String vm=request.getParameter("vmm");
       	%>
       	<h2><%=cname %></h2>
       	<%
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
       	
       	Statement st=connection.createStatement();
       	
       	String query="select * from "+tbl+" where cname='"+cname+"' and memory='"+vm+"'";
       	
       	ResultSet rs=st.executeQuery(query);
       	while(rs.next())
       	{
       		i=rs.getInt(1);
    		s2=rs.getString(2);
    		s3=rs.getString(3);
    		s4=rs.getString(4);
    		
       	}
       	if(vm.equalsIgnoreCase(s2)&&cname.equalsIgnoreCase(s4)){
       		application.setAttribute("id",i);
       		%>
       		<form action="Alter.jsp" method="post">
<table width="598" border="1" align="center">

	<tr>
		<td width="286" bgcolor="#FF0000"><span class="style3"><strong>VM Memory :- </strong></span></td>
		<td width="356"><input name="t42" type="text" id="t42" size="50"
			value="<%= vm%>" readonly="readonly" /></td>
	</tr>
	
	<tr>
		<td bgcolor="#FF0000"><span class="style3"><strong>Cost:- </strong></span></td>
		<td><input name="t4" type="text" id="t4" size="50"
			value="<%= s3 %>" /></td>
	</tr>
	<tr>
			  <td bgcolor="#FF0000">
			    <span class="style5">
			    <label for="cloud">Select Cloud Server :- </label>
			    </span> </td>
			  <td>
                   <select id="s1" name="cloud" style="width:225px;" class="text">
			     <option><%=cname %></option>
			  </select>			  </td>
			  </tr><tr>  <td bgcolor="#FF0000">
			    <span class="style5">
			    <label for="cloud">Operation :- </label>
			    </span> </td> 
			  <td>
                   <select id="s1" name="oper" style="width:225px;" class="text">
			     <option>Update</option>
                 <option>Delete</option> 
			  </select>			  </td>
			  </tr>
	
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"></div>		</td>
		<td><input type="submit" name="Submit2" value="Perform" /></td>
	</tr>
</table>
</form>
       		<%
       	}else{
       		%>
       		<h1>The Memory U choosen is not Available </h1>
       		<%
       	}
    	}catch(Exception e){
    		e.printStackTrace();
    		out.print(e.getMessage());
    	}
        %>
        
           
          <div class="img"></div>
          <div>
            
          </div>
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
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
