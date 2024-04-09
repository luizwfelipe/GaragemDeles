<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.sendRedirect("index.htm"); %>
<img src="assets/logo.png" alt=""/>
<link href="styles/index.css" rel="stylesheet" type="text/css"/>
<a href="pages/login.jsp"></a>
<img src="assets/FALA LOGIN DE QUALQUER LUGAR!.png" alt=""/>
<a href="pages/login.jsp"></a>
<img src="assets/logo.png" alt=""/>