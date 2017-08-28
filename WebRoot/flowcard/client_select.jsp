<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@ page import="java.util.*" %>
<%@ page import="org.passionjava.drp.basedata.*" %>
<%@ page import="org.passionjava.drp.util.*" %>
<%
	int pageNo = 1;
	int pageSize = 2;
	String pageNoStr = request.getParameter("pageNo");
	if(pageNoStr != null && !"".equals(pageNoStr)) {
		pageNo = Integer.parseInt(pageNoStr);
	}
	String queryStr = request.getParameter("clientIdOrName");
	if(queryStr == null) {
		queryStr = "";
	}
	PageModel pageModel = ClientManager.getInstance().findAllClients(pageNo, pageSize, queryStr);

%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>请选择分销商</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
		<script type="text/javascript">
	<%-- function topPage() {
		window.location = "client_select.jsp?pageNo=1&clientIdOrName=<%=queryStr%>";
	}
	
	function previousPage() {
		window.location = "client_select.jsp?pageNo=<%=pageModel.getPreviousPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function nextPage() {
		window.location = "client_select.jsp?pageNo=<%=pageModel.getNextPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function bottomPage() {
		window.location = "client_select.jsp?pageNo=<%=pageModel.getBottomPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function queryClient() {
		with(document.getElementById("clientForm")) {
			action = "client_select.jsp";
			method = "post";
			submit();
		}
	}
	
	function selectOk(clientId, clientName) {
		window.opener.document.all.clientId.value = clientId;
		window.opener.document.all.clientName.value = clientName;
		window.close();
	}
	 --%>
</script>
	</head>

	<body class="body1">
		<form name="clientForm" id="clientForm">
			<div align="center">
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="34">
					<tr>
						<td width="522" class="p1" height="34" nowrap>
							<img src="../images/search.gif" width="32" height="32">
							&nbsp;
							<b>请选择分销商</b>
						</td>
					</tr>
				</table>
				<hr width="100%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="17%" height="29">
							<div align="left">
								分销商代码/名称:
							</div>
						</td>
						<td width="57%">
							<input name="clientIdOrName" type="text" class="text1"
								id="clientIdOrName" size="50" maxlength="50" value="<%-- <%=/* queryStr */ %> --%>">
						</td>
						<td width="26%">
							<div align="left">
								<input name="btnQuery" type="button" class="button1"
									id="btnQuery" value="查询"  onClick="queryClient()">
							</div>
						</td>
					</tr>
					<tr>
						<td height="16">
							<div align="right"></div>
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							<div align="right"></div>
						</td>
					</tr>
				</table>

			</div>
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				class="rd1" align="center">
				<tr>
					<td nowrap height="10" class="p2">
						分销商信息
					</td>
					<td nowrap height="10" class="p3">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="95%" border="1" cellspacing="0" cellpadding="0"
				align="center" class="table1">
				<tr>
					<td class="rd6">
						选择
					</td>
					<td class="rd6">
						分销商代码
					</td>
					<td class="rd6">
						分销商名称
					</td>
					<td class="rd6">
						分销商类型
					</td>
				</tr>
				<%-- <%
					List clientList = pageModel.getDataList();
					for(Iterator iter=clientList.iterator(); iter.hasNext();) {
						Client client = (Client)iter.next();
					
				%> --%>
				<tr>
					<td class="rd8">
						<input type="radio" name="selectFlag" value="<%-- <%=/* client.getId() */ %> --%>"
							onDblClick="selectOk('<%-- <%=/* client.getClientId() */ %> --%>','<%-- <%=/* client.getName() */ %> --%>')">
					</td>
					<td class="rd8">
						<%-- <%=/* client.getClientId() */ %> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* client.getName() */ %> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* client.getClientLevel().getName() */ %> --%>
					</td>
				</tr>
				<%-- <%
					}
				%> --%>
			</table>
			<table width="95%" height="30" border="0" align="center"
				cellpadding="0" cellspacing="0" class="rd1">
				<tr>
					<td nowrap class="rd19" height="2" width="36%">
						<div align="left">
							<font color="#FFFFFF">&nbsp;共&nbsp;<%-- <%=/* pageModel.getTotalPage() */ %> --%>&nbsp;页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="#FFFFFF">当前第</font>&nbsp;
							<font color="#FF0000"><%-- <%=/* pageModel.getPageNo()  */%> --%></font>&nbsp;
							<font color="#FFFFFF">页</font>
						</div>
					</td>
					<td nowrap class="rd19" width="64%">
						<div align="right">
							<input name="btnTopPage" class="button1" type="button"
								id="btnTopPage" value="|&lt;&lt; " title="首页"
								onClick="topPage()">
							<input name="btnPreviousPage" class="button1" type="button"
								id="btnPreviousPage" value=" &lt;  " title="上页"
								onClick="previousPage()">
							<input name="btnNextPage" class="button1" type="button"
								id="btnNextPage" value="  &gt; " title="下页" onClick="nextPage()">
							<input name="btnBottomPage" class="button1" type="button"
								id="btnBottomPage" value=" &gt;&gt;|" title="尾页"
								onClick="bottomPage()">
							<input name="btnOk" class="button1" type="button" id="btnOk"
								value="确定" onClick="selectOk()">
							<input name="btnClose" class="button1" type="button"
								id="btnClose" value="关闭" onClick="window.close()">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
