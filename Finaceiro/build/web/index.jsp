
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="cabecalho.jsp" />

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="util.*"%> 
<%@page import="java.text.NumberFormat"%> 

<%
response.sendRedirect("/Finaceiro/sistema/");
%>