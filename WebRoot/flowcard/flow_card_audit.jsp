<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>流向单审核</title>
		<link rel="stylesheet" href="../style/drp.css">
		<link href="../style/JSCalendar.css" rel=stylesheet type=text/css>
		<script src="../script/JSCalendar.js"></script>
		<script src="../script/client_validate.js"></script>
	</head>

	<body class="body1">
		<form name="flowCardForm">
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
							<b>分销商库存管理&gt;&gt;流向单审核</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="14%" height="29">
							<div align="right">
								供方分销商代码:&nbsp;
							</div>
						</td>
						<td width="22%">
							<input name="clientId" type="text" class="text1" id="clientId4"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectClient" type="button" id="selectClientId9"
								value="..." class="button1"
								onClick="window.open('client_select', '选择分销商', 'width=700, height=400, scrollbars=no')">
						</td>
						<td width="14%">
							<div align="right">
								供方分销商名称:&nbsp;
							</div>
						</td>
						<td width="17%">
							<input name="clientName" type="text" class="text1"
								id="clientId24" size="10" maxlength="10" readonly="true">
						</td>
						<td width="33%">
							<input name="btnQuery" type="button" class="button1"
								id="btnQuery" value="查询">
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
								value="2001-01-01" readonly="true" onClick=JSCalendar(this)>
						</td>
						<td>
							<div align="right">
								结束日期:&nbsp;
							</div>
						</td>
						<td>
							<input type="text" name="endDate" size="10" maxlength="10"
								value="2001-01-01" readonly="true" onClick=JSCalendar(this)>
						</td>
						<td>
							<input name="btnReset" type="button" class="button1"
								id="btnReset" value="重置">
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
					<tr>
						<td width="37" class="rd8">
							<input name="selectFlag" type="checkbox" class="checkbox1"
								id="selectFlag" value="checkbox">
						</td>
						<td width="88" class="rd8">
							<a href="#"
								onClick="window.open('flow_card_detail', '流向单详细信息', 'width=800, height=400, scrollbars=no')">
								200706260001</a>
						</td>
						<td width="158" class="rd8">
							1001
						</td>
						<td width="211" class="rd8">
							北京医药股份有限公司
						</td>
						<td width="198" class="rd8">
							xxx
						</td>
						<td width="197" class="rd8">
							2007-06-26 10:20:30
						</td>
					</tr>
					<tr>
						<td width="37" class="rd8">
							&nbsp;
						</td>
						<td class="rd8">
							&nbsp;
						</td>
						<td class="rd8">
							&nbsp;
						</td>
						<td class="rd8">
							&nbsp;
						</td>
						<td class="rd8">
							&nbsp;
						</td>
						<td class="rd8">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td width="37" class="rd7">
							&nbsp;
						</td>
						<td width="88" class="rd7">
							&nbsp;
						</td>
						<td width="158" class="rd7">
							&nbsp;
						</td>
						<td width="211" class="rd7">
							&nbsp;
						</td>
						<td width="198" class="rd7">
							&nbsp;
						</td>
						<td width="197" class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td width="37" class="rd7">
							&nbsp;
						</td>
						<td width="88" class="rd7" height="13">
							&nbsp;
						</td>
						<td width="158" class="rd7">
							&nbsp;
						</td>
						<td width="211" class="rd7">
							&nbsp;
						</td>
						<td width="198" class="rd7">
							&nbsp;
						</td>
						<td width="197" class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="13">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="13">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="13">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="13">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="13">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="22">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7" height="22">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
						<td class="rd7">
							&nbsp;
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="30" class="rd1">
					<tr>
						<td nowrap class="rd19" height="2" width="36%">
							<div align="left">
								<font color="#FFFFFF">&nbsp;共&nbspxx&nbsp页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<font color="#FFFFFF">当前第</font>&nbsp
								<font color="#FF0000">x</font>&nbsp
								<font color="#FFFFFF">页</font>
							</div>
						</td>
						<td nowrap class="rd19" width="64%">
							<div align="right">
								<input name="btnTopPage" class="button1" type="button"
									id="btnTopPage" value="|&lt;&lt; " title="首页">
								<input name="btnPreviousPage" class="button1" type="button"
									id="btnPreviousPage" value=" &lt;  " title="上页">
								<input name="btnNextPage" class="button1" type="button"
									id="btnNextPage" value="  &gt; " title="下页">
								<input name="btnBottomPage" class="button1" type="button"
									id="btnBottomPage" value=" &gt;&gt;|" title="尾页">
								<input name="btnAudit" type="button" class="button1"
									id="btnAdd6" value="审核">
								<input name="btnAdjust" class="button1" type="button"
									id="btnDelete44" value="调整"
									onClick="self.location='flow_card_audit_modify'">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>
