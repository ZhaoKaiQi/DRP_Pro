<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%--  <%@ page import="org.passionjava.drp.basedata.*" %>
<%
	String idStr = request.getParameter("id");
	int id = Integer.parseInt(idStr);
	Client region4Modify = ClientManager.getInstance().findRegionOrClientById(id);
	if("modify".equals(request.getParameter("command"))) {
		region4Modify.setName(request.getParameter("name"));
		ClientManager.getInstance().modifyRegionOrClient(region4Modify);
		out.println("更新分销商成功");
	}
%> --%>
<html>
	<head>
		<link rel="stylesheet" href="../style/drp.css" />
		<script src="../script/client_validate.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>修改区域节点</title>
		<script type="text/javascript">
	function modifyRegion() {
		with(document.getElementById("regionForm")) {
			action = "client_node_modify.jsp";
			method = "post";
			submit();
		}
	}
	
	function goBack() {
		window.self.location = "client_node_crud.jsp";
	}
</script>
	</head>

	<body class="body1">
		<form id="regionForm" name="regionForm" >
			<input type="hidden" name="command" value="modify">
			<input type="hidden"  name="id" value="<%= %>">
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				height="8">
				<tr>
					<td width="522" class="p1" height="2" nowrap="nowrap">
						<img src="../images/mark_arrow_03.gif" width="14" height="14" />
						&nbsp;
						<b>基础数据管理&gt;&gt;分销商维护&gt;&gt;修改区域节点</b>
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size="0" />
			<p></p>
			<p></p>
			<table width="95%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="213">
						<div align="right">
							<font color="#FF0000">*</font>区域名称：
						</div>
					</td>
					<td width="410">
						<label>
							<input name="name" type="text" class="text1" id="name" value="<%=%>"/>
						</label>
					</td>
				</tr>
			</table>
			<p></p>
			<label>
				<br />
			</label>
			<hr />
			<p align="center">
				<input name="btnModify" class="button1" type="button" id="btnModify"
					value="修改" onClick="modifyRegion()" />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="btnModify" class="button1" type="button" id="btnModify"
					value="返回" onclick="goBack()" />
			</p>
		</form>
	</body>
</html>
