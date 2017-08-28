<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%-- <%@ page import="java.util.*" %>   
<%@ page import="java.text.*" %>  

<%@ page import="org.passionjava.drp.basedata.*" %>
<%@ page import="org.passionjava.drp.util.*" %>  	
<%
	int pageNo = 1;
	int pageSize = 2;
	String pageNoStr = request.getParameter("pageNo");
	if (pageNoStr != null && !pageNoStr.equals("")) {
		pageNo = Integer.parseInt(pageNoStr);
	}
	PageModel pageModel = FiscalYearPeriodManager.getInstance().findAllFiscalYearPeriod(pageNo, pageSize);
 %>	 --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>会计核算期间维护</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script type="text/javascript">
	function addFiscalYearPeriod() {
		window.self.location = "fiscal_year_period_add.jsp";
	}
	
	/*
	这个页面控制因为是单选按钮，所以不用像前面所写的多选那样麻烦
	*/
	function modifyFiscalYearPeriod() {
		var flag = false;
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			if (document.getElementsByName("selectFlag")[i].checked) {
				flag = true;
				break;
			}		
		}
		if (!flag) {
			alert("请选择需要修改的核算期间！");
			return;
		}
		window.self.location = "fiscal_year_period_modify.jsp?id=" + document.getElementsByName("selectFlag")[i].value;
	}
	
	<%-- function topPage() {
		window.self.location = "fiscal_year_period_maint.jsp?pageNo=<%=pageModel.getTopPage()%>";
	}
	
	function previousPage() {
		window.self.location = "fiscal_year_period_maint.jsp?pageNo=<%=pageModel.getPreviousPage()%>";
	}	
	
	function nextPage() {
		window.self.location = "fiscal_year_period_maint.jsp?pageNo=<%=pageModel.getNextPage()%>";
	}
	
	function bottomPage() {
		window.self.location = "fiscal_year_period_maint.jsp?pageNo=<%=pageModel.getBottomPage()%>";
	} --%>
		</script>
	</head>

	<body class="body1">
		<form name="fiscalYearPeriodForm" id="fiscalYearPeriodForm">
			<div align="center">
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="35">
					<tr>
						<td class="p1" height="18" nowrap>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td width="522" class="p1" height="17" nowrap>
							<img src="../images/mark_arrow_02.gif" width="14" height="14">
							&nbsp;
							<b>基础数据管理&gt;&gt;会计核算期间维护</b>
						</td>
					</tr>
				</table>
				<hr width="100%" align="center" size=0>
			</div>
			<table width="95%" height="20" border="0" align="center"
				cellspacing="0" class="rd1" id="toolbar">
				<tr>
					<td width="49%" class="rd19">
						<font color="#FFFFFF">查询列表</font>
					</td>
					<td width="27%" nowrap class="rd16">
						<div align="right"></div>
					</td>
				</tr>
			</table>
			<table width="95%" border="1" cellspacing="0" cellpadding="0"
				align="center" class="table1">
				<tr>
					<td width="79" class="rd6">
						选择
					</td>
					<td width="123" class="rd6">
						核算年
					</td>
					<td width="146" class="rd6">
						核算月
					</td>
					<td width="188" class="rd6">
						开始日期
					</td>
					<td width="204" class="rd6">
						结束日期
					</td>
					<td width="172" class="rd6">
						核算期状态
					</td>
				</tr>
				<%-- <%
					List fiscalYearPeriodList = pageModel.getDataList();
					for (Iterator iter = fiscalYearPeriodList.iterator();iter.hasNext();) {
						FiscalYearPeriod fiscalYearPeriod = (FiscalYearPeriod)iter.next();
				 %> --%>
				<tr>
					<td class="rd8">
						<input type="radio" name="selectFlag" id="selectFlag" value="<%-- <%= %> --%>">
					</td>
					<td class="rd8">
						<%-- <%= %> --%>
					</td>
					<td class="rd8">
						<%-- <%= %> --%>
					</td>
					<td class="rd8">
						<%-- <%= %> --%>
					</td>
					<td class="rd8">
						<%-- <%=%> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* fiscalYearPeriod.getPeriodSts().equals("N")?"不可用":"可用" */ %> --%>
					</td>
				</tr>
				<%-- <%
					}
				 %> --%>
			</table>
			<table width="95%" height="30" border="0" align="center"
				cellpadding="0" cellspacing="0" class="rd1">
				<tr>
					<td nowrap class="rd19" height="2">
						<div align="left">
							<font color="#FFFFFF">&nbsp;共&nbsp;<%-- <%=/* pageModel.getTotalPage()  */%> --%>&nbsp;页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="#FFFFFF">当前第</font>&nbsp;
							<font color="#FF0000"><%-- <%=/* pageModel.getPageNo() */ %> --%></font>&nbsp;
							<font color="#FFFFFF">页</font>
						</div>
					</td>
					<td nowrap class="rd19">
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
									value="添加" onClick="addFiscalYearPeriod()">
								<input name="btnModify" class="button1" type="button"
									id="btnModify" value="修改" onClick="modifyFiscalYearPeriod()">
						</div>
					</td>
				</tr>
			</table>
			<p>
				&nbsp;
			</p>
		</form>
	</body>
</html>
