<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%-- <%@ page import="org.passionjava.drp.sysmgr.*"%> --%>

<%
	/* String userId = "";
	String userName = "";
	String password = "";
	String email = "";
	String contactTel = "";
	//request.setCharacterEncoding("UTF-8");
	String command = request.getParameter("command");
	if (command != null && "add".equals(command)) {
		userId = request.getParameter("userId");
		userName = request.getParameter("userName");
		password = request.getParameter("password");
		contactTel = request.getParameter("contactTel");
		email = request.getParameter("email");
		if (UserManager.getInstance().findUserById(userId) != null) {
			out.println("用户代码已经存在，代码为【" + userId + "】");
		} else {
			User user = new User();
			user.setUserId(userId);
			user.setUserName(userName);
			user.setPassword(password);
			user.setContactTel(contactTel);
			user.setEmail(email);
			user.setCreateDate(new Date());
			UserManager.getInstance().addUser(user);
			out.println("添加用户成功！！！");
			userId = "";
			userName = "";
			password = "";
			contactTel = "";
			email = "";
		}
	} */
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>
<!-- 掌握js文件的引入 -->
<link rel="stylesheet" href="../style/drp.css">
<script src="../script/client_validate.js"></script>
<script type="text/javascript">
	function goBack() {
		window.self.location = "user_maint.html";
	}

	/* function document.onkeydown() {
		//alert(window.event.keyCode);
		if(window.event.keyCode == 13 && window.event.srcElement.type != "button") {
			window.event.keyCode = 9;
		}
	} */

	function init() {
		document.getElementById("userId").focus();
	}

	function addUserOnkeypress() {
		var keyCode = window.event.keyCode;
		if (!(keyCode >= 97) && (keyCode <= 122) || (keyCode >= 65)
				&& (keyCode <= 90) || (keyCode >= 48) && (keyCode <= 57)
				|| (keyCode == 95)) {
			//keyCode = 0;
			window.event.keyCode = 0;
		}
	}

	function addUser() {
		var vUserId = trim(document.getElementById("userId").value);
		if (vUserId.length < 4) {
			alert("用户的代码至少为四位");
			document.getElementById("userId").focus();
			return;
		}

		if (!(vUserId.charAt(0) >= 'a' && vUserId.charAt(0) <= 'z' || vUserId
				.charAt(0) >= 'A'
				&& vUserId.charAt(0) <= 'Z')) {
			alert("首字符必须为字母");
			document.getElementById("userId").focus();
			return;
		}

		for ( var i = 0; i < vUserId.length; i++) {
			var c = vUserId.charAt(i);
			if (!(c >= 'a') && (c <= 'z') || (c >= 'A') && (c <= 'Z')
					|| (c >= '0') && (c <= '9') || (c == '_')) {

				alert("用户的代码只能是字母、数字或下划线");
				document.getElementById("userId").focus();
				return;
			}
		}

		var vUserName = document.getElementById("userName").value;
		if (trim(vUserName) == "") {
			alert("用户名不能为空");
			document.getElementById("userName").focus();
			return;
		}

		var vPassword = document.getElementById("password").value;
		if (trim(vPassword).length < 6) {
			alert("密码至少为六位");
			document.getElementById("password").focus();
			return;
		}

		var vRespText = document.getElementById("respText").innerHTML;
		if (vRespText != "") {
			document.getElementById("userId").focus();
			return;
		}
		/*
		document.getElementById("userForm").method = "POST";
		document.getElementById("userForm").action = "user_add.jsp?command=add";
		document.getElementById("userForm").submit();
		 */
		with (document.getElementById("userForm")) {
			method = "POST";
			action = "user_add.jsp?command=add";
			submit();
		}

	}

	//-------------AJAX Begin-------------
	var xmlHttp;

	function createXmlHttp() {
		//非IE浏览器创建XmlHttpRequest对象
		if (window.XmlHttpRequest) {
			xmlHttp = new XmlHttpRequest();
			//如果是IE
		} else if (window.ActiveXObject) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}

	function validate() {
		// alert("ok");
		var vUserId = trim(document.getElementById("userId").value);
		if (vUserId.length != 0) {
			createXmlHttp();
			var url = "user_validate.jsp?userId=" + vUserId + "&timestamp="
					+ new Date().getTime();
			xmlHttp.open("GET", url, true);
			xmlHttp.onreadystatechange = callback;
			xmlHttp.send(null);
		}
	}

	function callback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				if (trim(xmlHttp.responseText) != "") {
					//alert(xmlHttp.responseText);
					document.getElementById("respText").innerHTML = "<font color='red'>"
							+ xmlHttp.responseText + "</font>";
				} else {

					document.getElementById("respText").innerHTML = "";
				}
			} else {
				alert("请求失败，错误码【" + xmlHttp.status + "】");
			}
		}
	}
	//-------------AJAX END-------------
</script>
</head>

<body class="body1" onload="init()">
	<form name="userForm" id="userForm">
		<div align="center">
			<table width="95%" border="0" cellspacing="2" cellpadding="2">
				<tr>
					<td>&nbsp;</td>
				</tr>
			</table>
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				height="25">
				<tr>
					<td width="522" class="p1" height="25" nowrap><img
						src="../images/mark_arrow_03.gif" width="14" height="14">
						&nbsp; <b>系统管理&gt;&gt;用户维护&gt;&gt;添加</b>
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size=0>
			<table width="95%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="22%" height="29">
						<div align="right">
							<font color="#FF0000">*</font>用户代码:&nbsp;
						</div>
					</td>
					<td width="78%"><input name="userId" type="text" class="text1"
						id="userId" size="10" maxlength="10" value="<%=%>"
						onkeypress="addUserOnkeypress()" onblur="validate()"> <span
						id="respText"></span>
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							<font color="#FF0000">*</font>用户名称:&nbsp;
						</div>
					</td>
					<td><input name="userName" type="text" class="text1"
						id="userName" size="20" maxlength="20" value="">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">
							<font color="#FF0000">*</font>密码:&nbsp;
						</div>
					</td>
					<td><label> <input name="password" type="password"
							class="text1" id="password" size="20" maxlength="20"
							value="<%=%>"> </label>
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">联系电话:&nbsp;</div>
					</td>
					<td><input name="contactTel" type="text" class="text1"
						id="contactTel" size="20" maxlength="20" value="<%=%>">
					</td>
				</tr>
				<tr>
					<td height="26">
						<div align="right">email:&nbsp;</div>
					</td>
					<td><input name="email" type="text" class="text1" id="email"
						size="20" maxlength="20" value="<%=%>">
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size=0>
			<div align="center">
				<input name="btnAdd" class="button1" type="button" id="btnAdd"
					value="添加" onClick="addUser()"> &nbsp;&nbsp;&nbsp;&nbsp; <input
					name="btnBack" class="button1" type="button" id="btnBack"
					value="返回" onclick="goBack()" />
			</div>
		</div>
	</form>
</body>
</html>
