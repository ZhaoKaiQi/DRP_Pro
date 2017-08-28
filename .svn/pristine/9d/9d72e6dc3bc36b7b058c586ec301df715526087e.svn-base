<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>分销商库存数量初始化</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
	</head>

	<body class="body1">
		<form name="InvIniQtyForm">
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
							<b>分销商库存管理&gt;&gt;分销商库存数量初始化</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="14%" height="29">
							<div align="right">
								分销商代码:&nbsp;
							</div>
						</td>
						<td width="22%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectClient" type="button" id="btnSelectClient"
								value="..." class="button1"
								onClick="window.open('client_select', '选择分销商', 'width=700, height=400, scrollbars=no')">
						</td>
						<td width="14%">
							<div align="right">
								分销商名称:&nbsp;
							</div>
						</td>
						<td width="17%">
							<input name="clientName" type="text" class="text1"
								id="clientName" size="10" maxlength="10" readonly="true">
						</td>
						<td width="33%">
							<input name="btnQuery" type="button" class="button1"
								id="btnQuery" value="查询">
							<font color="#FFFFFF">首页&nbsp;&nbsp;&nbsp;上页&nbsp;&nbsp;&nbsp;下页&nbsp;&nbsp;&nbsp;尾页</font>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								物料代码:&nbsp;
							</div>
						</td>
						<td>
							<input name="itemNo" type="text" class="text1" id="itemNo"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectItemNo" type="submit" id="btnSelectItemNo"
								value="..." class="button1"
								onclick="window.open('item_select', '选择物料', 'width=700, height=400, scrollbars=no')">
						</td>
						<td>
							<div align="right">
								物料名称:&nbsp;
							</div>
						</td>
						<td>
							<input name="itemName" type="text" class="text1" id="itemName"
								size="10" maxlength="10" readonly="true">
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
					align="center" class="table1">
					<tr>
						<td width="31" height="32" class="rd6">
							<input type="checkbox" name="ifAll" onClick="checkAll()">
						</td>
						<td width="86" class="rd6">
							分销商代码
						</td>
						<td width="194" class="rd6">
							分销商名称
						</td>
						<td width="93" class="rd6">
							物料代码
						</td>
						<td width="144" class="rd6">
							物料名称
						</td>
						<td width="119" class="rd6">
							规格
						</td>
						<td width="110" class="rd6">
							型号
						</td>
						<td width="79" class="rd6">
							计量单位
						</td>
						<td width="94" class="rd6">
							数量
						</td>
					</tr>
					<tr>
						<td width="31" class="rd8">
							<input type="checkbox" name="selectFlag" class="checkbox1"
								value="checkbox">
						</td>
						<td width="86" class="rd8">
							1001
						</td>
						<td width="194" class="rd8">
							北京医药股份有限公司
						</td>
						<td width="93" class="rd8">
							2001
						</td>
						<td width="144" class="rd8">
							青霉素
						</td>
						<td width="119" class="rd8">
							xxxxx
						</td>
						<td width="110" class="rd8">
							xxx-aa-dd
						</td>
						<td width="79" class="rd8">
							盒
						</td>
						<td width="94" class="rd8">
							100
						</td>
					</tr>
					<tr>
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
						<td width="31" class="rd7">
							&nbsp;
						</td>
						<td width="86" class="rd7">
							&nbsp;
						</td>
						<td width="194" class="rd7">
							&nbsp;
						</td>
						<td width="93" class="rd7">
							&nbsp;
						</td>
						<td width="144" class="rd7">
							&nbsp;
						</td>
						<td width="119" class="rd7">
							&nbsp;
						</td>
						<td width="110" class="rd7">
							&nbsp;
						</td>
						<td width="79" class="rd7">
							&nbsp;
						</td>
						<td width="94" class="rd7">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td width="31" class="rd7">
							&nbsp;
						</td>
						<td width="86" class="rd7" height="13">
							&nbsp;
						</td>
						<td width="194" class="rd7">
							&nbsp;
						</td>
						<td width="93" class="rd7">
							&nbsp;
						</td>
						<td width="144" class="rd7">
							&nbsp;
						</td>
						<td width="119" class="rd7">
							&nbsp;
						</td>
						<td width="110" class="rd7">
							&nbsp;
						</td>
						<td width="79" class="rd7">
							&nbsp;
						</td>
						<td width="94" class="rd7">
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
						<td nowrap class="rd19" height="2" width="66%">
							<div align="left">
								<font color="#FFFFFF">&nbsp;共&nbspxx&nbsp页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<font color="#FFFFFF">当前第</font>&nbsp
								<font color="#FF0000">x</font>&nbsp
								<font color="#FFFFFF">页</font>
							</div>
						</td>
						<td nowrap class="rd19" width="66%">
							<div align="right">
								<input name="btnTopPage" class="button1" type="button"
									id="btnTopPage" value="|&lt;&lt; " title="首页">
								<input name="btnPreviousPage" class="button1" type="button"
									id="btnPreviousPage" value=" &lt;  " title="上页">
								<input name="btnNextPage" class="button1" type="button"
									id="btnNextPage" value="  &gt; " title="下页">
								<input name="btnBottomPage" class="button1" type="button"
									id="btnBottomPage" value=" &gt;&gt;|" title="尾页">
								<input name="btnAdd" type="button" class="button1" id="btnAdd"
									value="添加" onClick="self.location='inv_init_qty_add'">
								<input name="btnDelete" class="button1" type="button"
									id="btnDelete" value="删除" onClick="confirm('你是否真的删除所选的产品?');">
								<input name="btnModify" class="button1" type="button"
									id="btnModify" value="修改"
									onClick="self.location='inv_init_qty_modify'">
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>
