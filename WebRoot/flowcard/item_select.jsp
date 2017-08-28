<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%-- <%@ page import="java.util.*" %>

<%@ page import="org.passionjava.drp.util.*" %>
<%@ page import="org.passionjava.drp.basedata.manager.*" %>
<%@ page import="org.passionjava.drp.basedata.model.*" %>
<%
	int pageNo = 1;
	int pageSize = 2;
	int index = Integer.parseInt(request.getParameter("index"));
	String pageNoStr = request.getParameter("pageNo");
	if(pageNoStr != null && !"".equals(pageNoStr)) {
		pageNo = Integer.parseInt(pageNoStr);
	}
	String queryStr = request.getParameter("itemNoOrName");
	if(queryStr == null) {
		queryStr = "";
	}
	ItemManager itemManager =(ItemManager) this.getServletContext().getAttribute("itemManager");
	PageModel pageModel = itemManager.findAllItems(pageNo, pageSize, queryStr);
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>请选择物料</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
		<script type="text/javascript">
	<%-- function topPage() {
		window.location = "item_select.jsp?pageNo=<%=pageModel.getTopPage()%>&itemNoOrName=<%=queryStr%>&index=<%=index%>";
	}
	
	function previousPage() {
		window.location = "item_select.jsp?pageNo=<%=pageModel.getPreviousPage()%>&itemNoOrName=<%=queryStr%>&index=<%=index%>";
	}
	
	function nextPage() {
		window.location = "item_select.jsp?pageNo=<%=pageModel.getNextPage()%>&itemNoOrName=<%=queryStr%>&index=<%=index%>";
	}
	
	function bottomPage() {
		window.location = "item_select.jsp?pageNo=<%=pageModel.getBottomPage()%>&itemNoOrName=<%=queryStr%>&index=<%=index%>";
	}
	
	function queryClient() {
		with(document.getElementById("selectItemForm")) {
			action = "item_select.jsp";
			method = "post";
			submit();
		}
	}
	
	function selectOk(itemNo, itemName, spec, pattern, unit) {
		if(window.opener.document.all.tblFlowCardDetail.rows.length == 2) {
			window.opener.document.all.itemNo.value = itemNo;
			window.opener.document.all.itemName.value = itemName;
			window.opener.document.all.spec.value = spec;
			window.opener.document.all.pattern.value = pattern;
			window.opener.document.all.unit.value = unit;
		} else {
			window.opener.document.all.itemNo[<%=index%>].value = itemNo;
			window.opener.document.all.itemName[<%=index%>].value = itemName;
			window.opener.document.all.spec[<%=index%>].value = spec;
			window.opener.document.all.pattern[<%=index%>].value = pattern;
			window.opener.document.all.unit[<%=index%>].value = unit;
		}
		window.close();
	} --%>
	
</script>
	</head>

	<body class="body1">
		<form name="selectItemForm" id="selectItemForm">
			<div align="center">
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="34">
					<tr>
						<td width="522" class="p1" height="34" nowrap>
							<img src="../images/search.gif" width="32" height="32">
							&nbsp;
							<b>请选择物料</b>
						</td>
					</tr>
				</table>
				<hr width="100%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="17%" height="29">
							<div align="left">
								物料代码/名称:
							</div>
						</td>
						<td width="57%">
							<input name="itemNoOrName" type="text" class="text1"
								id="itemNoOrName" size="50" maxlength="50" value="<%=/* queryStr */ %>">
						</td>
						<td width="26%">
							<div align="left">
								<input name="btnQuery" type="button" class="button1"
									id="btnQuery" value="查询" onClick="queryClient()">
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
						物料信息
					</td>
					<td nowrap height="10" class="p3">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="95%" border="1" cellspacing="0" cellpadding="0"
				align="center" class="table1">
				<tr>
					<td width="35" class="rd6">
						选择
					</td>
					<td width="170" class="rd6">
						物料代码
					</td>
					<td width="222" class="rd6">
						物料名称
					</td>
					<td width="195" class="rd6">
						物料规格
					</td>
					<td width="293" class="rd6">
						物料型号
					</td>
					<td width="293" class="rd6">
						类别
					</td>
					<td width="293" class="rd6">
						计量单位
					</td>
				</tr>
				
				<%-- <%
					List itemList = pageModel.getDataList();
					for(Iterator iter=itemList.iterator(); iter.hasNext();) {
						Item item = (Item)iter.next();
					
				%> --%>
				<tr>
					<td width="35" class="rd8">
						<input type="radio" name="selectFlag" value="<%=/* item.getItemNo()  */%>"
							onDblClick="selectOk('<%=/* item.getItemNo() */ %>', '<%=/* item.getItemName() */ %>', '<%=/* item.getSpec() */ %>', '<%=/* item.getPattern() */ %>', '<%=/* item.getUnit().getName() */ %>')">
					</td>
					<td width="170" class="rd8">
						<%=/* item.getItemNo() */ %>
					</td>
					<td width="222" class="rd8">
						<%=/* item.getItemName() */ %>
					</td>
					<td width="195" class="rd8">
						<%=/* item.getSpec()  */%>
					</td>
					<td width="293" class="rd8">
						<%=/* item.getPattern() */ %>
					</td>
					<td width="293" class="rd8">
						<%=/* item.getCategory().getName() */ %>
					</td>
					<td width="293" class="rd8">
						<%=/* item.getUnit().getName() */ %>
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
							<font color="#FFFFFF">&nbsp;共&nbsp;<%=/* pageModel.getTotalPage() */ %>&nbsp;页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="#FFFFFF">当前第</font>&nbsp;
							<font color="#FF0000"><%=/* pageModel.getPageNo() */ %></font>&nbsp;
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
