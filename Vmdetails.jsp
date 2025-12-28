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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CHARM: A Cost-efficient Multi-cloud Data Hosting Scheme with High Availability</title>
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
.style3 {color: #00FF00}
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
   <h1><a href="index.html">Secure Data Transfer and<small>Deletion from Counting Bloom Filter in Cloud Computing</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="DataOwner.html"><span>Data Owner </span></a></li>
          <li><a href="ProxyServer.html"><span>Proxy Server</span></a></li>
          <li><a href="CloudServer.html"><span>CloudServer</span></a></li>
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
        <div class="article">
        <%
        String on=(String)application.getAttribute("onname");%>
            <h1 align="center"><%=on %> VM  Details</h1>
            <br/>
</div>
       <table width="965" border="1" align="center">
  <tr>
   <td width="140" height="32" bgcolor="#FF0000"><div align="center"><span class="style3">CloudName</span></div></td>
      <td width="293" bgcolor="#FF0000"><div align="center"><span class="style3">Memory</span></div></td>     
       <td width="293" bgcolor="#FF0000"><div align="center"><span class="style3">Cost </span></div></td>
  </tr>
<%
String clo=(String)application.getAttribute("ownercloud");

String u=(String)application.getAttribute("onname");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
      		String tbl = "";
      		if (clo.equalsIgnoreCase("Rackspace")) {
      			tbl = "charm_RackspaceVm";
      		} else if (clo.equalsIgnoreCase("Amazon S3")) {
      			tbl = "charm_amazons3vm";
      		} else if (clo.equalsIgnoreCase("Windows Azure")) {
      			tbl = "charm_windowsazurevm";
      		} else if (clo.equalsIgnoreCase("Aliyun OSS")) {
      			tbl = "charm_aliyunossvm";
      		}
      		
      		 
      		
      		String query="select * from "+tbl+" where cloudname='"+clo+"' and ownername='"+u+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);

           while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		%>

<tr>
	<td height="29">
	<div align="center" class="style4"><%=s3%></div>	</td>
		<td>
	<div align="center" class="style4"><%=s5%></div>	</td>
	<td>
	<div align="center" class="style4"><%=s6%></div>	</td>
</tr>


<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
            e.printStackTrace();
          }
%>
</table>
<h4><a href="DataOwnerMain.jsp">back</a></h4>
<br/>
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
