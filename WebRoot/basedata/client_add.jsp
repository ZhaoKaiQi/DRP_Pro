<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%-- <%@ page import="java.util.*" %>

<%@ page import="org.passionjava.drp.basedata.*" %>
<%@ page import="org.passionjava.drp.util.*" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
    if("add".equals(request.getParameter("command"))) {
    	Client client = new Client();
    	client.setPid(Integer.parseInt(request.getParameter("id")));
    	client.setName(request.getParameter("clientName"));
    	client.setClientId(request.getParameter("clientId"));
    	
    	ClientLevel cl = new ClientLevel();
    	cl.setId(request.getParameter("clientLevel"));
    	client.setClientLevel(cl);
    	
    	client.setBankAcctNo(request.getParameter("bankAcctNo"));
    	client.setAddress(request.getParameter("address"));
    	client.setContactTel(request.getParameter("contactTel"));
    	client.setZipCode(request.getParameter("zipCode"));
    	client.setIsLeaf("Y");
    	client.setIsClient("Y");
    	ClientManager.getInstance().addRegionOrClient(client);
    	
    	out.println("添加分销商成功！！！");
    }
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>添加分销商</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
		<script type="text/javascript">
		
			function addClient() {
				var vRespText = document.getElementById("respText").innerHTML;
				if(vRespText != "") {
					alert("分销商代码不能重复");
					document.getElementById("clientId").focus();
					return;
				}
				with(document.getElementById("clientForm")) {
					action = "client_add.jsp";
					method = "post";
					submit();
				}
			}
			
				//-------------AJAX Begin-------------
	 var xmlHttp;
		
	 function createXmlHttp() {
	   //非IE浏览器创建XmlHttpRequest对象
	    if(window.XmlHttpRequest){
	    	 xmlHttp = new XmlHttpRequest();
	    	 //如果是IE
	    } else if(window.ActiveXObject) {
		    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");     
	    }
	   }  
	
		
		function validate() {
			// alert("ok");
			var vClientId = trim(document.getElementById("clientId").value);
			if(vClientId.length != 0) {
				createXmlHttp();
				var url = "../servlet/ClientIdValidateServlet?clientId=" +  vClientId + "&timestamp=" + new Date().getTime();
				xmlHttp.open("GET", url, true);
				xmlHttp.onreadystatechange = callback;
				xmlHttp.send(null);
			}
		}
		
		function callback() {
			if(xmlHttp.readyState == 4) {
				if(xmlHttp.status == 200) {
					if(trim(xmlHttp.responseText) != "") {
						//alert(xmlHttp.responseText);
						document.getElementById("respText").innerHTML = "<font color='red'>" + xmlHttp.responseText + "</font>";
					} else {
					
						document.getElementById("respText").innerHTML = "";
					}
				} else {
					alert("请求失败，错误码【" + xmlHttp.status + "】");
				}
			}
		}
	//-------------AJAX END-------------
		</script>
	</head>

	<body class="body1">
		<form name="clientForm" id="clientForm">
			<input type="hidden" name="command" value="add">
			<input type="hidden" name="id" value="<%-- <%= %> --%>">
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
							<img src="../images/mark_arrow_03.gif" width="14" height="14">
							&nbsp;
							<b>基础数据管理&gt;&gt;分销商维护&gt;&gt;添加分销商</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="22%" height="29">
							<div align="right">
								<font color="#FF0000">*</font>分销商代码:&nbsp;
							</div>
						</td>
						<td width="78%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" onblur="validate()">
								<span id="respText"></span>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								<font color="#FF0000">*</font>分销商名称:&nbsp;
							</div>
						</td>
						<td>
							<input name="clientName" type="text" class="text1"
								id="clientName" size="40" maxlength="40">
						</td>
					</tr>
					<tr>
						<td height="15">
							<div align="right">
								<font color="#FF0000">*</font>分销商类型:&nbsp;
							</div>
						</td>
						<td>
						<select name="clientLevel" class="select1" id="clientLevel">
					<%-- 	<%
							List<ClientLevel> clientLevelList = DataDictManager.getInstance().getClientLevelList();
							for(Iterator<ClientLevel> iter = clientLevelList.iterator(); iter.hasNext();) {
								ClientLevel cl = iter.next();
						%>
								<option value="<%=cl.getId() %>">
									<%=cl.getName() %>
								</option>
								<%
									}
								%> --%>
							</select>
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								银行帐号:&nbsp;
							</div>
						</td>
						<td>
							<input name="bankAcctNo" type="text" class="text1"
								id="bankAcctNo" size="10" maxlength="10">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								联系电话:&nbsp;
							</div>
						</td>
						<td>
							<input name="contactTel" type="text" class="text1"
								id="contactTel" size="10" maxlength="10">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								地址:&nbsp;
							</div>
						</td>
						<td>
							<input name="address" type="text" class="text1" id="address"
								size="10" maxlength="10">
						</td>
					</tr>
					<tr>
						<td height="26">
							<div align="right">
								邮编:&nbsp;
							</div>
						</td>
						<td>
							<input name="zipCode" type="text" class="text1" id="zipCode"
								size="10" maxlength="10">
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input name="btnAdd" class="button1" type="button" id="btnAdd"
						value="添加" onclick="addClient()">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnBack" class="button1" type="button" id="btnBack"
						value="返回" onclick="history.go(-1)" />
				</div>
			</div>
		</form>
	</body>
</html>
