<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><html xmlns="http://www.w3.org/1999/xhtml">
 
<%-- <%@ page import="org.passionjava.drp.basedata.*" %>
 <%
 
 	int id = Integer.parseInt(request.getParameter("id"));
    //out.println("id=" + id);
    Client client = ClientManager.getInstance().findRegionOrClientById(id);
    
    if("delete".equals(request.getParameter("command"))) {
    	ClientManager.getInstance().deleteTreeNodeById(id);
    	client.setName("");
    	out.println("删除分销商成功！！");
    }
 %> --%>
	<head>
		<link rel="stylesheet" href="../style/drp.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>分销商维护</title>
		<script type="text/javascript">
			function modifyClient() {
				window.self.location = "client_modify.jsp?id=<%-- <%=%> --%>";
			}
			
			function deleteClient() {
				if(window.confirm("确定要删除吗？")) {
				with(document.getElementById("clientForm")) {
					action = "client_crud.jsp";
					method = "post";
					submit();
				}
			}
	}
	
		</script>
	</head>

	<body class="body1">
		<form id="clientForm" name="clientForm" >
			<input type="hidden" name="command" value="delete">
			<input type="hidden" name="id" value="
">
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				height="8">
				<tr>
					<td width="522" class="p1" height="2" nowrap="nowrap">
						<img src="../images/mark_arrow_02.gif" width="14" height="14" />
						&nbsp;
						<b>基础数据管理&gt;&gt;分销商维护</b>
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size="0" />
			<p>
			<p>
			<table width="95%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="213">
						<div align="right">
							当前分销商名称：
						</div>
					</td>
					<td width="410">
						<label>
							<input name="clientName" type="text" class="text1"
								id="clientName" readonly="true" value="<%-- <%= %> --%>" />
						</label>
					</td>
				</tr>
			</table>
			<p>
				<label>
					<br />
				</label>
			<hr />
			<p align="center">
				<input name="btnModifyClient" type="button" class="button1"
					id="btnModifyClient" onClick="modifyClient()"
					value="修改分销商" />
				&nbsp;
				<input name="btinDeleteClient" type="button" class="button1"
					id="btinDeleteClient" value="删除分销商" onclick="deleteClient()"/>
				&nbsp;
				<input name="btnViewDetail" type="button" class="button1"
					id="btnViewDetail" onClick="self.location='client_detail.jsp'"
					value="查看详细信息" />
			</p>
		</form>
	</body>
</html>
