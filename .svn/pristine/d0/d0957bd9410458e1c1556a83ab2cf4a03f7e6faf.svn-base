<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ page import="org.passionjava.drp.sysmgr.*" %>   
<%
	/**
		使用AJAX技术一般都要清除缓存，否则后出现一些莫名其妙的错误，具体方法为
		reponse.setContentType("text/html");
		response.setHeader("Cache-Control", "no-store");  //HTTP1.1
		response.setHeader("Pragma", "no-cache"); //HTTP1.0
		response.setDateHeader("Expires", 0);
		但一般我们都不采用这种方法，太麻烦了
		*/	
	
	String userId = request.getParameter("userId");
	User user = UserManager.getInstance().findUserById(userId);
	if(user != null) {
		out.println("用户代码已经存在");
	}
%> --%>
