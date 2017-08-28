<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <%@ page import="org.passionjava.drp.sysmgr.*" %>   --%>

<%
/* 	String command = request.getParameter("command");
	if (command != null && command.equals("modify")) {
		User user = (User)session.getAttribute("user");
		String password = request.getParameter("newPassword");
		UserManager.getInstance().modifyPassword(user.getUserId(), password);
		user.setPassword(password);
		session.removeAttribute("user");
		session.setAttribute("user", user);
		out.println("提示：修改密码成功！");
	} */
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet" href="../style/drp.css">
<script type="text/javascript">
	
	function init() {
		document.getElementById("oldPassword").focus();
	}
	
	function modifyPasword() {
		if (document.getElementById("oldPassword").value.length < 6) {
			alert("原码不能小于6位字符！");
			document.getElementById("oldPassword").focus();
			return; 
		}
		if (document.getElementById("responseMsg").innerHTML != "") {
			alert("输入的密码与原密码不相同！");
			document.getElementById("oldPassword").focus();
			return;
		}
		if (document.getElementById("newPassword").value.length < 6) {
			alert("新密码不能小于6位字符！");
			document.getElementById("newPassword").focus();
			return; 
		}
		if (document.getElementById("affirmNewPassowrd").value.length < 6) {
			alert("确认新密码不能小于6位字符！");
			document.getElementById("affirmNewPassowrd").focus();
			return; 
		}
		if (document.getElementById("newPassword").value != document.getElementById("affirmNewPassowrd").value) {
			alert("新密码和确认新密码必须相同！");
			document.getElementById("affirmNewPassowrd").focus();
			return;
		}
		with (document.getElementById("userForm")) {
			method = "post";
			action = "password_modify.jsp?command=modify";
			submit();
		}
	}
	
	//---------------------------Ajax begin----------------------------	
	var xmlHttp;
	
	function createXMLHttpRequest() {
		if(window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	
	function validate() {
		createXMLHttpRequest();
		var oldPassword = document.getElementById("oldPassword").value;
		if (oldPassword != "") {
			var url = "../servlet/PasswordValidateServlet?oldPassword=" + oldPassword + "&timestampt=" + new Date().getTime();
			xmlHttp.open("GET", url, true);
			xmlHttp.onreadystatechange = callback;
			xmlHttp.send(null);
		}
	}

	function callback() {
		if(xmlHttp.readyState == 4) {
			if(xmlHttp.status == 200) {
				var responseMsgDiv = document.getElementById("responseMsg");
				if (xmlHttp.responseText != "") {
					responseMsgDiv.innerHTML = "<font color='red'>" + xmlHttp.responseText + "</font>";
				}else {
					responseMsgDiv.innerHTML = "";
				}
			}
		}
	}		
	
	//---------------------------Ajax end----------------------------		
</script>
</head>

<body class="body1" onload="init()">
	<form name="userForm" id="userForm">
		<div align="center">
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				height="51">
				<tr>
					<td class="p1" height="16" nowrap>&nbsp;</td>
				</tr>
				<tr>
					<td class="p1" height="35" nowrap>&nbsp&nbsp <img
						src="../images/mark_arrow_02.gif" width="14" height="14"> <b><strong>系统管理&gt;&gt;</strong>修改密码</b>
					</td>
				</tr>
			</table>
			<hr width="100%" align="center" size=0>
			<table width="50%" height="91" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="30">
						<div align="right">
							<font color="#FF0000">*</font>&#21407;&#23494;&#30721;:
						</div></td>
					<td><input name="oldPassword" type="password" class="text1"
						id="oldPassword" size="25" onblur="validate()">&nbsp<span
						id="responseMsg"></span></td>
				</tr>
				<tr>
					<td height="27">
						<div align="right">
							<font color="#FF0000">*</font>新密码:
						</div></td>
					<td><input name="newPassword" type="password" class="text1"
						id="newPassword" size="25"></td>
				</tr>
				<tr>
					<td height="34">
						<div align="right">
							<font color="#FF0000">*</font>确认密码:
						</div></td>
					<td><input name="affirmNewPassowrd" type="password"
						class="text1" id="affirmNewPassowrd" size="25"></td>
				</tr>
			</table>
			<hr width="100%" align="center" size=0>
			<p>
				<input name="btnModify" class="button1" type="button" id="btnModify"
					value="修改" onClick="modifyPasword()"> &nbsp; &nbsp;&nbsp;
			</p>
		</div>
	</form>
</body>
</html>
