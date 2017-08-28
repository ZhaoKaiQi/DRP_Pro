<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
    
<%-- <%@ page import="org.passionjava.drp.sysmgr.*" %>
<%@ page import="org.passionjava.drp.util.*" %> --%>

<%-- <%
	if("delete".equals(request.getParameter("command"))) {
		String[] userIds = request.getParameterValues("selectFlag");
	   UserManager.getInstance().deleteUsers(userIds);
	   out.println("删除用户成功！！！");
	}
%> --%>
<%-- 
<%
	int pageNo = 1;
	int pageSize = 4;
	String pageNoStr = request.getParameter("pageNo");
	if(pageNoStr != null) {
		pageNo = Integer.parseInt(pageNoStr);
	}

	PageModel pageModel = UserManager.getInstance().findUsers(pageNo, pageSize);
	
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户维护</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script type="text/javascript">
	
	function addUser() {
		window.self.location = "user_add.jsp";	
	}
	
	function modifyUser() {
		var selectFlags = document.getElementsByName("selectFlag");
		var count = 0;
		var j = -1;
		for(var i = 0; i < selectFlags.length; i++) {
			//alert(selectFlags[i].value);
			if(selectFlags[i].checked) {
				count++;
				j = i;
			}
		}
		
		if(count == 0) {
			alert("请选择要修改的用户！！！");
			return;
		}
		
		if(count > 1) {
			alert("一次只能修改一个用户！！！");
			return;
		}
		
		with(document.getElementById("userform")) {
			action = "user_modify.jsp?userId=" + selectFlags[j].value;
			method = "post";
			submit();
		}
	}
	
	function deleteUser() {
		var selectFlags = document.getElementsByName("selectFlag");
		var flag = false;
		for(var i = 0; i < selectFlags.length; i++) {
		  if(selectFlags[i].checked) {
		  	flag = true;
		  	break;
		  }
		}
		
		if(!flag) {
			alert("请选择要删除的用户!!");
			return;
		}
		
		if(window.confirm("确实要删除吗?")) {
					
			with(document.getElementById("userform")) {
				action = "user_maint.jsp?command=delete";
				method = "post";
				submit();
			}
		}
	}
		
	<%-- function checkAll() {
		var selectFlags = document.getElementsByName("selectFlag");
		for(var i = 0; i < selectFlags.length; i++) {
			selectFlags[i].checked = document.getElementById("ifAll").checked;
		}
	}

	function topPage() {
		window.location = "user_maint.jsp?pageNo=<%=pageModel.getTopPage()%>"
	}
	
	function previousPage() {
		window.location = "user_maint.jsp?pageNo=<%=.getPreviousPage()%>"
	}	
	
	function nextPage() {
		//window.location = "user_maint.jsp?pageNo=<%=pageNo + 1 > pageModel.getTotalPage() ? pageModel.getTotalPage() : pageNo + 1%>"
		window.location = "user_maint.jsp?pageNo=<%=pageModel.getNextPage()%>"
	}
	
	function bottomPage() {
		window.location = "user_maint.jsp?pageNo=<%=pageModel.getBottomPage()%>"
	} --%>

</script>
	</head>

	<body class="body1">
		<form name="userform" id="userform">
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
							<b>系统管理&gt;&gt;用户维护</b>
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
					<td width="55" class="rd6">
						<input type="checkbox" name="ifAll" onClick="checkAll()">
					</td>
					<td width="119" class="rd6">
						用户代码
					</td>
					<td width="152" class="rd6">
						用户名称
					</td>
					<td width="166" class="rd6">
						联系电话
					</td>
					<td width="150" class="rd6">
						email
					</td>
					<td width="153" class="rd6">
						创建日期
					</td>
				</tr>
			<%-- 	<% 
					
					for(Iterator iter = pageModel.getDataList().iterator(); iter.hasNext();) { 
						User user = (User)iter.next();
				
				%> --%>
				<tr>
					<td class="rd8">
						<input type="checkbox" name="selectFlag" class="checkbox1"
							value="<%-- <%=%> --%>">
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
						<%-- <%= %> --%>
					</td>
				</tr>
				<%-- <%
				/* } */
				%> --%>
			</table>
			<table width="95%" height="30" border="0" align="center"
				cellpadding="0" cellspacing="0" class="rd1">
				<tr>
					<td nowrap class="rd19" height="2">
						<div align="left">
							<font color="#FFFFFF">&nbsp;共&nbsp<%-- <%= %> --%>&nbsp页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="#FFFFFF">当前第</font>&nbsp
							<font color="#FF0000"><%-- <%= %> --%></font>&nbsp
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
								id="btnNextPage" value="  &gt; " title="下页" onClick="nextPage()">
							<input name="btnBottomPage" class="button1" type="button"
								id="btnBottomPage" value=" &gt;&gt;|" title="尾页"
								onClick="bottomPage()">
							<input name="btnAdd" type="button" class="button1" id="btnAdd"
								value="添加" onClick="addUser()">
							<input name="btnDelete" class="button1" type="button"
								id="btnDelete" value="删除" onClick="deleteUser()">
							<input name="btnModify" class="button1" type="button"
								id="btnModify" value="修改" onClick="modifyUser()">
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
