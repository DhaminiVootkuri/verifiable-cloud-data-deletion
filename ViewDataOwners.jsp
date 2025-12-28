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
<title>View Data Owners</title>
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
.style5 {
	color: #FFFF00;
	font-weight: bold;
}
.style6 {color: #FF0000}
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
   
        <div class="article">
         <h1 align="center">View Data Owners</h1>
<p>&nbsp;</p>
  <table width="924" border="1" align="center">
  <tr>
    <td width="241" height="32" bgcolor="#FF0000"><div align="center" class="style5">Owner Image </div></td>
    <td width="168" bgcolor="#FF0000"><div align="center" class="style5">Owner Name </div></td>
       <td width="154" bgcolor="#FF0000"><div align="center" class="style5">E-Mail</div></td>
       <td width="102" bgcolor="#FF0000"><div align="center" class="style5">Mobile</div></td>
    <td width="102" bgcolor="#FF0000"><div align="center" class="style5">Address</div></td>

    <td width="109" bgcolor="#FF0000"><div align="center" class="style5">DOB</div></td>
 
    <td width="124" bgcolor="#FF0000"><div align="center" class="style5">Location</div></td>
    
    <td width="102" bgcolor="#FF0000"><div align="center" class="style5">CloudName</div></td>
  </tr>

<%

String a = (String) application.getAttribute("cloudName");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;
String ii="";
      	try 
	{
        
           String query="select * from charm_owner where cloudname='"+a+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		ii=rs.getString("id");
		s2=rs.getString("name");
		s3=rs.getString("email");
		s4=rs.getString("mobile");
		s5=rs.getString("addr");
		s6=rs.getString("dob");
		s7=rs.getString("location");
		s8=rs.getString("cloudname");
		s9=rs.getString("imagess");
		
		
		i=Integer.parseInt(ii);
%>



  <tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=ii%>" width="100" height="100" alt="Submit">
    </input></div></td>
    <td><div align="center" class="style6"><%=s2%></div></td>
    <td><div align="center" class="style6"><%=s3%></div></td>
    <td><div align="center" class="style6"><%=s4%></div></td>
    <td><div align="center" class="style6"><%=s5%></div></td>
    <td><div align="center" class="style6"><%=s6%></div></td>
    <td><div align="center" class="style6"><%=s7%></div></td>
    <td><div align="center" class="style6"><%=s8%></div></td>
  </tr>

<%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
          </p>
   


<h4><a href="CloudServerMain.jsp">back</a></h4>
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
