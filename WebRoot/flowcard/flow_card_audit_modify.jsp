<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>流向单审核</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
	</head>

	<body class="body1">
		<div align="center">
			<form name="flowCardForm" id="flowCardForm">
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
							<b>分销商库存管理&gt;&gt;流向单审核&gt;&gt;调整</b>
						</td>
					</tr>
				</table>
				<hr width="95%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="11%" height="29">
							<div align="right">
								流向单号:
							</div>
						</td>
						<td width="10%">
							200706260001
						</td>
						<td width="13%">
							<div align="right">
								供方分销商代码:&nbsp;
							</div>
						</td>
						<td width="10%">
							1001
						</td>
						<td width="13%">
							<div align="right">
								供方分销商名称:&nbsp;
							</div>
						</td>
						<td width="17%">
							北京医药有限公司
						</td>
						<td width="8%">
							<div align="right">
								入库日期:
							</div>
						</td>
						<td width="18%">
							2007-06-15
						</td>
					</tr>
				</table>
				<table width="95%" border="1" align="center" cellpadding="0"
					cellspacing="0" class="table1" id="tblFlowCardDetail">
					<tr bordercolor="#FFFFFF" bgcolor="#FFFFFF">
						<td height="22" width="86" class="rd6">
							<div align="left">
								需方客户代码
							</div>
						</td>
						<td height="22" width="158" class="rd6">
							<div align="left">
								需方客户名称
							</div>
						</td>
						<td height="22" width="70" class="rd6">
							<div align="left">
								物料代码
							</div>
						</td>
						<td height="22" width="87" class="rd6">
							<div align="left">
								物料名称
							</div>
						</td>
						<td class="rd6">
							规格
						</td>
						<td class="rd6">
							型号
						</td>
						<td class="rd6">
							计量单位
						</td>
						<td class="rd6">
							原始数量
						</td>
						<td class="rd6">
							<font color="#FF0000">*</font>调整数量
						</td>
						<td class="rd6">
							<div align="left">
								<font color="#FF0000">*</font>调整原因
							</div>
						</td>
					</tr>
					<tr>
						<td class="rd8">
							2007062600011
						</td>
						<td class="rd8">
							北京医药股份有限公司
						</td>
						<td class="rd8">
							2001
						</td>
						<td class="rd8">
							青霉素
						</td>
						<td class="rd8">
							sss
						</td>
						<td class="rd8">
							fff
						</td>
						<td class="rd8">
							盒
						</td>
						<td class="rd8">
							100
						</td>
						<td class="rd8">
							<input name="adjustQty" type="text" class="text1" id="adjustQty"
								size="10" maxlength="10">
						</td>
						<td class="rd8">
							<input name="adjustReason" type="text" class="text1"
								id="adjustReason" size="20" maxlength="20">
						</td>
					</tr>
				</table>
				<p>
				<p>
				<p>
				<hr width="95%" align="center" size=0>
				<p>
					<input name="btnModify" type="button" id="btnModify" value="修改">
					&nbsp;
					<input name="btnBack" type="button" id="btnBack"
						onClick="history.go(-1)" value="返回">
				</p>
				<p>
					&nbsp;
				</p>
				<p>
					&nbsp;
				</p>
			</form>
			<p>
				&nbsp;
			</p>
		</div>
	</body>
</html>
