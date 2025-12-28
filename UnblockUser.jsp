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
<title>Un block User</title>
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
      <h1 align="center" class="style1">Revoked User</h1>



<p class="infopost"><span class="style3 style2">Revoked </span>&nbsp;&nbsp;|<span
	class="style1">&nbsp;&nbsp;User</span></p>
<div class="clr"></div>
<div class="img"></div>
<div>
<form id="form1" name="form1" method="post" action="UnRevoke.jsp">
<table width="598" border="0" align="center">
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<tr>
	<%
	try{
	Statement st5=connection.createStatement();
    ResultSet rs5=st5.executeQuery("select user from charm_attacker ");
	
	%>
		<td bgcolor="#FF0000" class="style3 style5"><strong>Select Revoked User Name :-</strong></td>
		<td><select id="s1" name="us" class="text" >
			<%while(rs5.next()){ %>
		
			<option><%=rs5.getString("user") %></option>
			<%} %>
		</select></td>
	</tr>


	<tr>
		<td>&nbsp;</td>
		<tr>
			<td>
			<div align="right"></div>
			</td>
			<td><input type="submit" name="Submit" value="UnRevoke" /></td>
		</tr>
		<%}catch(Exception e){
			e.printStackTrace();
			out.print(e.getMessage());
		}	%>
		
</table>
</form>
<br />
<br />
<br />
<br />
<br />
<br />
  <p align="center" class="infopost style6"><span class="style2">Work Load Details </span></p>
<br />
<br />
<br />


	
        
        
            

      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
    </div>
    <div align=center></div></body>
</html>
