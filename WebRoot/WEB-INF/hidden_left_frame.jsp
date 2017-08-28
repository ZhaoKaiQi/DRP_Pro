<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Untitled Document</title>
		<link rel="stylesheet" href="style/drp.css">

		<script languagbe="JavaScript">
function changeWin(){
	parent.toolBar.showMainMenu.style.display=''; 
	parent.workaround.cols="0,*";
}
</script>
	</head>

	<body class="boyd1" topmargin="0" leftmargin="0">
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0" bgcolor="6699CC">
			<tr>
				<td width="82%" height="21" nowrap>
					<font color="#FFFFFF">主菜单</font>
				</td>
				<td width="18%">
					<div align="right">
						<img src="images/hidetoc1.gif" style="cursor:hand" title="隐藏菜单"
							onclick="changeWin()" width="15" height="20">
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>
