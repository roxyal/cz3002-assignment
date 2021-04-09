<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix ="s" uri="/struts-tags" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>CZ3002 Login Function</title>
  </head>
  <body>
    <h1>Login to CZ3002</h1>
  <s:form action ="verify">
  
  <s:textfield name="username" label = "Enter username"/><br>
  
  <s:password name="password" label = "Enter password"/><br>
  
  <s:submit value="Login" align="center"/> 
  </s:form>
  </body>
</html> 