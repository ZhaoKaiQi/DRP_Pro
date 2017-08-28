<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<link rel="stylesheet" href="../style/drp.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>终端客户维护</title>
	</head>

	<body class="body1">
		<form id="temiClientForm" name="temiClientForm" method="post"
			action="">
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				height="8">
				<tr>
					<td width="522" class="p1" height="2" nowrap="nowrap">
						<img src="../images/mark_arrow_02.gif" width="14" height="14" />
						&nbsp;
						<b>基础数据管理&gt;&gt;终端客户维护</b>
					</td>
				</tr>
			</table>
			<hr width="97%" align="center" size="0" />
			<p></p>
			<p></p>
			<table width="95%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="213">
						<div align="right">
							当前终端客户名称：
						</div>
					</td>
					<td width="410">
						<label>
							<input name="temiaName" type="text" class="text1" id="temiaName"
								readonly="true" />
						</label>
					</td>
				</tr>
			</table>
			<p></p>
			<label>
				<br />
			</label>
			<hr />
			<p align="center">
				<input name="btnModifyTemiClient" type="button" class="button1"
					id="btnModifyTemiClient"
					onClick="self.location='temi_client_modify'" value="修改终端客户" />
				&nbsp;
				<input name="btnDeleteTemiClient" type="button" class="button1"
					id="btnDeleteTemiClient" value="删除终端客户" />
				&nbsp;
				<input name="btnDetailInfo" type="button" class="button1"
					id="btnDetailInfo"
					onClick="self.location='temi_client_detail'" value="查看详细信息" />
			</p>
		</form>
	</body>
</html>
