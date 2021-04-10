<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix ="s" uri="/struts-tags" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>CZ3002 Login Function</title>
  </head>
  <body onload=errorMsg()>
  <div align="center">
    <h1>Login to CZ3002</h1>
  <s:form action ="verify">
  
  <s:textfield name="username" label = "Enter username" required="required"/><br>
  
  <s:password name="password" label = "Enter password" required="required"/><br>
  
  <s:submit value="Login" align="center"/> 
  </s:form>
  <label hidden=true style='color: red' id='loginMsg'>Unsuccessful login!</label>
    </div>
  </body>
  <script type="text/javascript">
 	function errorMsg(){
 		var str = window.location.href;
 		if(str.includes("verify.action")){
 			document.getElementById("loginMsg").hidden = false;
 		}
 	}
</script>
</html> 