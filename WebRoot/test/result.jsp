<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> itemList = (List<String>)request.getAttribute("itemlist");
	for(Iterator<String> iter = itemList.iterator(); iter.hasNext();) {
		out.println(iter.next() + "<br>");
	}
%>
</body>
</html>