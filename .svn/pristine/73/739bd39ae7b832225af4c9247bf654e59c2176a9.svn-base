<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.util.*" %>

<%-- <%@ page import="org.passionjava.drp.basedata.*" %>
<%@ page import="org.passionjava.drp.util.*" %>
<%
	String idStr = request.getParameter("id");
	int id = Integer.parseInt(idStr);
	Client client4Modify = ClientManager.getInstance().findRegionOrClientById(id);
	if("modify".equals(request.getParameter("command"))) {
		
		client4Modify.setName(request.getParameter("clientName"));

		ClientLevel cl = new ClientLevel();
		cl.setId(request.getParameter("clientLevel"));
		client4Modify.setClientLevel(cl);
		client4Modify.setBankAcctNo(request.getParameter("bankAcctNo"));
		client4Modify.setAddress(request.getParameter("address"));
		client4Modify.setZipCode(request.getParameter("zipCode"));
		client4Modify.setContactTel(request.getParameter("contactTel"));
		ClientManager.getInstance().modifyRegionOrClient(client4Modify);
		out.println("更新分销商成功");
		
	}
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>修改分销商</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
		<script language="javascript">
	function modifyClient() {
		with(document.getElementById("clientForm")) {
			action = "client_modify.jsp";
			method = "post";
			submit();
		}
	}

</script>
	</head>

	<body class="body1">
		<form name="clientForm" " id="clientForm">
			<input type="hidden" name="command" value="modify">
			<input type="hidden"  name="id" value="<%= %>">
			<div align="center">
				<table width="95%" border="0" cellspacing="2" cellpadding="2">
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="8">
					<tr>
						<td width="522" class="p1" height="2" nowrap>
							<img src="../images/mark_arrow_03.gif" width="14" height="14">
							&nbsp;
							<b>基础数据管理&gt;&gt;分销商维护&gt;&gt;修改分销商</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="22%" height="29">
							<div align="right">
								分销商代码:&nbsp;
							</div>
						</td>
						<td width="78%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" readonly="true" value="<%=%>">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								<font color="#FF0000">*</font>分销商名称:&nbsp;
							</div>
						</td>
						<td>
							<input name="clientName" type="text" class="text1"
								id="clientName" size="40" maxlength="40" value="<%= %>">
						</td>
					</tr>
					<tr>
						<td height="15">
							<div align="right">
								<font color="#FF0000">*</font>分销商类型:&nbsp;
							</div>
						</td>
						<td>
							<select name="clientLevel" class="select1" id="clientLevel">
						<%-- 						<%
							List<ClientLevel> clientLevelList = DataDictManager.getInstance().getClientLevelList();
							for(Iterator<ClientLevel> iter = clientLevelList.iterator(); iter.hasNext();) {
								ClientLevel cl = iter.next();
								String selected = "";
								if(cl.getId().equals(client4Modify.getClientLevel().getId()) ) {
									selected = "selected";
								}
						%>
								<option value="<%=cl.getId() %>" <%=selected %>>
									<%=cl.getName() %>
								</option>
								<%
									}
								%> --%>
							</select>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								银行帐号:&nbsp;
							</div>
						</td>
						<td>
							<input name="bankAcctNo" type="text" class="text1"
								id="bankAcctNo" size="10" maxlength="10" value="<%= %>">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								联系电话:&nbsp;
							</div>
						</td>
						<td>
							<input name="contactTel" type="text" class="text1"
								id="contactTel" size="10" maxlength="10" value="<%=%>">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								地址:&nbsp;
							</div>
						</td>
						<td>
							<input name="address" type="text" class="text1" id="address"
								size="10" maxlength="10" value="<%=%>">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								邮编:&nbsp;
							</div>
						</td>
						<td>
							<input name="zipCode" type="text" class="text1" id="zipCode"
								size="10" maxlength="10" value="<%= %>">
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input name="btnModify" class="button1" type="button"
						id="btnModify" value="修改" onclick="modifyClient()">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnBack" class="button1" type="button" id="btnBack"
						value="返回" onclick="history.go(-1)" />
				</div>
			</div>
		</form>
	</body>
</html>
