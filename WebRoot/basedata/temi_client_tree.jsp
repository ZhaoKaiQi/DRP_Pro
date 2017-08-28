<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="../style/drp.css">
		<style type="text/css">
<!--
a:link {
	text-decoration: none;
	color: #000000;
	font-size: 9pt;
	font-family: 宋体;
}
a:visited {
	text-decoration: none;
	color: #000000;
	font-size: 9pt;
	font-family: 宋体;
	
}
a:hover {
	text-decoration: none;
	color: #000000;
	font-size: 9pt;
	font-family: 宋体;

}
a:active {
	text-decoration: none;
	color: #000000;
	font-size: 9pt;
	font-family: 宋体;
}
-->
</style>

		<script language="JavaScript">
<!--
	function display(id) {
	 eval("var div=div"+id);
	 eval("var img=img"+id);
	 eval("var im=im"+id);
	 div.style.display=div.style.display!="none"?"none":"block";
	 img.src=div.style.display!="none"?"../images//minus.gif":"../images//plus.gif";
	 im.src=div.style.display!="none"?"../images//openfold.gif":"../images//closedfold.gif";
	 img.alt=div.style.display!="none"?"关闭":"展开";
	}
//-->
</script>
	</head>
	<body class="body1">
		<table>
			<tr>
				<td valign="top" nowrap="nowrap">
					<div>
						<img alt="展开" style="cursor:hand;" onClick="display('1');"
							id="img1" src="../images/plus.gif">
						<img id="im1" src="../images/closedfold.gif">
						<a href="temi_client_node_crud" target="temiClientDispAreaFrame">所有终端客户</a>
						<div style="display:none;" id="div1">
							<div>
								<img src="../images/white.gif">
								<img alt="展开" style="cursor:hand;" onClick="display('2');"
									id="img2" src="../images/plus.gif">
								<img id="im2" src="../images/closedfold.gif">
								<a href="temi_client_node_crud" target="temiClientDispAreaFrame">华北区</a>
								<div style="display:none;" id="div2">
									<div>
										<img src="../images/white.gif">
										<img src="../images/white.gif">
										<img alt="展开" style="cursor:hand;" onClick="display('3');"
											id="img3" src="../images/plus.gif">
										<img id="im3" src="../images/closedfold.gif">
										<a href="temi_client_node_crud" target="temiClientDispAreaFrame">北京市</a>
										<div style="display:none;" id="div3">
											<div>
												<img src="../images/white.gif">
												<img src="../images/white.gif">
												<img src="../images/white.gif">
												<img src="../images/minus.gif">
												<img src="../images/openfold.gif">
												<a href="temi_client_crud"	target="temiClientDispAreaFrame">北京中医医院</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<img src="../images/white.gif">
								<img src="../images/minus.gif">
								<img src="../images/openfold.gif">
									<a href="temi_client_node_crud" target="temiClientDispAreaFrame">东北区</a>
							</div>
							<div>
								<img src="../images/white.gif">
								<img src="../images/minus.gif">
								<img src="../images/openfold.gif">
								<a href="temi_client_node_crud" target="temiClientDispAreaFrame">华南区</a>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>