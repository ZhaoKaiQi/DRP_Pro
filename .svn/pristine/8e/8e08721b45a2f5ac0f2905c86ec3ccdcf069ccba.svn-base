<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@page import="org.passionjava.drp.flowcard.manager.FlowCardManager"%>
<%@page import="org.passionjava.drp.util.PageModel"%>
<%@page import="org.passionjava.drp.flowcard.model.FlowCard"%>

<%
    int pageNo = 1;
    int pageSize = 2;
    String pageNoStr = request.getParameter("pageNo");
    String clientName = request.getParameter("clientName");
    String clientId = request.getParameter("clientId");
    String beginDate = request.getParameter("beginDate");
    String endDate = request.getParameter("endDate");
    if(pageNoStr != null) {
    	pageNo = Integer.parseInt(pageNoStr);
    }
    if(clientId == null) {
    	clientId = "";
    }
    
    if(clientName == null) {
    	clientName = "";
    }
    
    if(beginDate == null) {
    	beginDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }
    
    if(endDate == null) {
    	endDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }
    String queryCondition = "&clientId=" + clientId + "&beginDate=" + beginDate + "&endDate=" + endDate;
    FlowCardManager flowCardManager = (FlowCardManager)getServletContext().getAttribute("flowCardManager");
    
	String command = request.getParameter("command");
	if(command != null && "delete".equals(command)) {
		String[] vouNos = request.getParameterValues("selectFlag");
		flowCardManager.deleteFlowCards(vouNos);
		out.println("删除流向单成功!");
	}
	
	if(command != null && "audit".equals(command)) {
		String[] vouNos = request.getParameterValues("selectFlag");
		flowCardManager.auditFlowCards(vouNos);
		out.println("送审流向单成功!");
	}
    
    PageModel pageModel = flowCardManager.findAllFowCards(pageNo, pageSize, clientId, beginDate, endDate);
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>流向单维护</title>
		<link rel="stylesheet" href="../style/drp.css" type=text/css>
		<link href="../style/JSCalendar.css" rel=stylesheet type=text/css>
		<script src="../script/JSCalendar.js"></script>
		<script src="../script/client_validate.js"></script>
		<script type="text/javascript">
	function addFlowCard() {
		window.self.location = "flow_card_add.jsp";
	}
	
	function modifyFlowCard() {
		window.self.location = "flow_card_modify";
	}
	
	function deleteFlowCard() {
		if(window.confirm("确定删除？")) {
			with(document.getElementById("flowCardForm")) {
				action = "flow_card_maint.jsp?command=delete";
				method = "post";
				submit();
			}
		}
	}
	
	<%-- function topPage() {
		window.self.location = "flow_card_maint.jsp?pageNo=<%=pageModel.getTopPage()%><%=queryCondition%>";
	}
	
	function previousPage() {
		window.self.location = "flow_card_maint.jsp?pageNo=<%=pageModel.getPreviousPage()%><%=queryCondition%>";
	}
	
	function nextPage() {
		
		window.self.location = "flow_card_maint.jsp?pageNo=<%=pageModel.getNextPage()%><%=queryCondition%>";
	}
	
	function bottomPage() {
		window.self.location = "flow_card_maint.jsp?pageNo=<%=pageModel.getBottomPage()%><%=queryCondition%>";
	}
	 --%>
	function checkAll() {
		var selectFlags = document.getElementsByName("selectFlag");
		for(var i=0; i<selectFlags.length; i++) {
			selectFlags[i].checked = document.getElementById("ifAll").checked;
		}
	}
	function queryFlowCard() {
		with(document.getElementById("flowCardForm")) {
			action = "flow_card_maint.jsp";
			method = "post";
			submit();
		}
	}
	
	function resetFlowCard() {
		window.location =  "flow_card_maint.jsp";

	}	
	
	function auditFlowCard() {
		if(window.confirm("确定送审？")) {
			with(document.getElementById("flowCardForm")) {
				action = "flow_card_maint.jsp?command=audit";
				method = "post";
				submit();
			}
		}
	}
	
</script>
	</head>

	<body class="body1">
		<form name="flowCardForm" id="flowCardForm">
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
							<img src="../images/mark_arrow_02.gif" width="14" height="14">
							&nbsp;
							<b>分销商库存管理&gt;&gt;流向单维护</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="15%" height="29">
							<div align="right">
								供方分销商代码:&nbsp;
							</div>
						</td>
						<td width="23%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectClient" type="button" id="btnSelectClient"
								value="..." class="button1"
								onClick="window.open('client_select.jsp', '选择分销商', 'width=700, height=400, scrollbars=no')">
						</td>
						<td width="14%">
							<div align="right">
								供方分销商名称:&nbsp;
							</div>
						</td>
						<td width="37%">
							<input name="clientName" type="text" class="text1"
								id="clientName" size="40" maxlength="40" readonly="true">
						</td>
						<td width="11%">
							<input name="btnQuery" type="button" class="button1"
								id="btnQuery" value="查询" onClick="queryFlowCard()">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								开始日期:&nbsp;
							</div>
						</td>
						<td>
							<input type="text" name="beginDate" size="10" maxlength="10"
								value="<%-- <%=/* beginDate */ %> --%>" readonly="true" onClick=JSCalendar(this)>
						</td>
						<td>
							<div align="right">
								结束日期:&nbsp;
							</div>
						</td>
						<td>
							<input type="text" name="endDate" size="10" maxlength="10"
								value="<%-- <%= /* endDate */ %> --%>" readonly="true" onClick=JSCalendar(this)>
						</td>
						<td>
							<input name="btnReset" type="button" class="button1"
								id="btnReset" value="重置" onClick="resetFlowCard()">
						</td>
					</tr>
				</table>
				<table height=8 width="95%">
					<tr>
						<td height=3></td>
					</tr>
				</table>
				<table width="95%" height="20" border="0" cellspacing="0"
					id="toolbar" class="rd1">
					<tr>
						<td class="rd19" width="434">
							<font color="#FFFFFF">查询列表</font>
						</td>
						<td nowrap class="rd16" width="489">
							<div align="right"></div>
						</td>
					</tr>
				</table>
				<table width="95%" border="1" cellspacing="0" cellpadding="0"
					align="center" class="table1" title="点击选中的数据查看详细信息...">
					<tr>
						<td class="rd6">
							<input type="checkbox" name="ifAll" onClick="checkAll()">
						</td>
						<td class="rd6">
							流向单号
						</td>
						<td class="rd6">
							供方分销商代码
						</td>
						<td class="rd6">
							供方分销商名称
						</td>
						<td class="rd6">
							录入人
						</td>
						<td class="rd6">
							录入日期
						</td>
					</tr>
					<%-- <% 
						List flowCardList = pageModel.getDataList();
					    for(Iterator iter = flowCardList.iterator(); iter.hasNext();) {
					    	FlowCard flowCard = (FlowCard)iter.next();
					    
					%> --%>
					<tr>
						<td width="37" class="rd8">
							<input name="selectFlag" type="checkbox" class="checkbox1"
								id="selectFlag" value="<%-- <%=/* flowCard.getVouNo() */ %> --%>">
						</td>
						<td width="88" class="rd8">
							<a href="#"
								onClick="window.open('flow_card_detail.jsp?vouNo=<%-- <%=/* flowCard.getVouNo() */ %> --%>', '流向单详细信息', 'width=800, height=400, scrollbars=no')">
								<%-- <%=/* flowCard.getVouNo() */%> --%></a>
						</td>
						<td width="158" class="rd8">
							<%-- <%=/* flowCard.getClient().getClientId() */ %> --%>
						</td>
						<td width="211" class="rd8">
							<%-- <%=/* flowCard.getClient().getName() */ %> --%>
						</td>
						<td width="198" class="rd8">
						<%-- 	<%=/* flowCard.getRecorder().getUserName()  */%> --%>
						</td>
						<td width="197" class="rd8">
							<%-- <%=/* new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(flowCard.getRecordDate()) */ %> --%>
						</td>
					</tr>
					<%-- <%
					    }
					%> --%>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="30" class="rd1">
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
									id="btnNextPage" value="  &gt; " title="下页"
									onClick="nextPage()">
								<input name="btnBottomPage" class="button1" type="button"
									id="btnBottomPage" value=" &gt;&gt;|" title="尾页"
									onClick="bottomPage()">
								<input name="btnAdd" type="button" class="button1" id="btnAdd"
									value="添加" onClick="addFlowCard()">
								<input name="btnDelete" class="button1" type="button"
									id="btnDelete" value="删除" onClick="deleteFlowCard()">
								<input name="btnModify" class="button1" type="button"
									id="btnModify" value="修改" onClick="modifyFlowCard()">
								<input name="btnAudit" class="button1" type="button"
									id="btnAudit" value="送审" onClick="auditFlowCard()">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>
