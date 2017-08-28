<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>修改物料</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>

	</head>

	<body class="body1">
		<form name="itemForm" target="_self" id="itemForm">
			<div align="center">
				<table width="95%" height="21" border="0" cellpadding="2"
					cellspacing="2">
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="25">
					<tr>
						<td width="522" class="p1" height="25" nowrap>
							<img src="../images/mark_arrow_03.gif" width="14" height="14">
							&nbsp;
							<b>基础数据管理&gt;&gt;物料维护&gt;&gt;修改</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="22%" height="29">
							<div align="right">
								物料代码:&nbsp;
							</div>
						</td>
						<td width="78%">
							<input name="itemNo" type="text" class="text1" id="itemNo"
								size="10" maxlength="10" readonly="true">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								<font color="#FF0000">*</font>物料名称:&nbsp;
							</div>
						</td>
						<td>
							<input name="itemName" type="text" class="text1" id="itemName"
								size="20" maxlength="20">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								物料规格:&nbsp;
							</div>
						</td>
						<td>
							<label>
								<input name="spec" type="text" class="text1" id="spec"
									size="20" maxlength="20">
							</label>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								物料型号:&nbsp;
							</div>
						</td>
						<td>
							<input name="pattern" type="text" class="text1" id="pattern"
								size="20" maxlength="20">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								<font color="#FF0000">*</font>类别:&nbsp;
							</div>
						</td>
						<td>
							<select name="category" class="select1" id="category">
								<option value="医疗器械" selected>
									医疗器械
								</option>
								<option value="中成药">
									中成药
								</option>
								<option value="西药">
									西药
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								<font color="#FF0000">*</font>计量单位:&nbsp;
							</div>
						</td>
						<td>
							<select name="unit" class="select1" id="unit">
								<option value="盒">
									盒
								</option>
								<option value="片">
									片
								</option>
								<option value="箱">
									箱
								</option>
							</select>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input name="btnModify" class="button1" type="button"
						id="btnModify" value="修改">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnModify" class="button1" type="button"
						id="btnModify" value="返回" onClick="history.go(-1)">
				</div>
			</div>
		</form>
	</body>
</html>
