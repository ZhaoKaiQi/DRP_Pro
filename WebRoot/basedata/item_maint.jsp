<%@ page contentType="text/html;charset=utf-8" %> 
<%-- <%@ page import="java.util.*" %>

<%@ page import="org.passionjava.drp.util.*" %>
<%@ page import="org.passionjava.drp.basedata.manager.*" %>
<%@ page import="org.passionjava.drp.basedata.model.*" %>
<%
    int pageNo = 1;
	String pageNoStr = request.getParameter("pageNo");
	if(pageNoStr != null) {
		pageNo = Integer.parseInt(pageNoStr);
	}
    int pageSize = 4;
    String queryStr = request.getParameter("clientIdOrName");
    if(queryStr == null) {
    	queryStr = "";
    }
	ItemManager itemManager = (ItemManager)getServletContext().getAttribute("itemManager");
    String command = request.getParameter("command");
    if("delete".equals(command)) {
    	String[] itemNos = request.getParameterValues("selectFlag");
    	//System.out.println(itemNos[0] + "  " + itemNos[1]);
    	itemManager.deleteItems(itemNos);
    	out.println("删除物料成功");
    }
	PageModel pageModel = itemManager.findAllItems(pageNo, pageSize, queryStr);
%> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>物料维护</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/windows.js"></script>
		<script type="text/javascript">
	function addItem() {
		window.self.location = "item_add.jsp";
	}
	
	function modifyItem() {
		window.self.location = "item_modify";
	}
	
	function deleteItem() {
		var selectFlags = document.getElementsByName("selectFlag");
		var flag = false;
		for(var i = 0 ; i < selectFlags.length; i++) {
			if(selectFlags[i].checked) {
				flag = true;
				break;
			}
		}
		if(!flag) {
			alert("请选择要删除的物料");
			return;
		}
		
		if(window.confirm("是否要删除选中的物料")) {
			with(document.getElementById("itemForm")) {
				action = "item_maint.jsp?command=delete";
				method = "post";
				submit();
			}
		}
	}
	<%-- function topPage() {
		window.location = "item_maint.jsp?pageNo=<%=pageModel.getTopPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function previousPage() {
		window.location = "item_maint.jsp?pageNo=<%=pageModel.getPreviousPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function nextPage() {
		window.location = "item_maint.jsp?pageNo=<%=pageModel.getNextPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function bottomPage() {
		window.location = "item_maint.jsp?pageNo=<%=pageModel.getBottomPage()%>&clientIdOrName=<%=queryStr%>";
	}
	
	function checkAll() {
	
	}
	
	function queryItem() {
		with(document.getElementById("itemForm")) {
			action = "item_maint.jsp";
			method = "post";
			submit();
		}
	}
	 --%>
	function uploadPic4Item() {
		var selectFlags = document.getElementsByName("selectFlag");
		var count = 0;
		var j = -1;
		for(var i = 0; i< selectFlags.length; i++) {
			if(selectFlags[i].checked) {
				count++;
				j = i;
			}
		}
		if(count > 1) {
			alert("一次只能上传一张图片");
			return;
		}
		if(count == 0) {
			alert("请选择要上传的图片");
			return;
		}
		window.self.location = "item_upload.jsp?itemNo=" + selectFlags[j].value ;
	}
</script>
	</head>

	<body class="body1">
		<form name="itemForm" id="itemForm">
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
							<img src="../images/mark_arrow_02.gif" alt="我" width="14"
								height="14">
							&nbsp;
							<b>基础数据管理&gt;&gt;物料维护</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="17%" height="29">
							<div align="left">
								物料代码/名称:
							</div>
						</td>
						<td width="57%">
							<input name="clientIdOrName" type="text" class="text1"
								id="clientIdOrName" size="50" maxlength="50" value="<%-- <%=%> --%>">
						</td>
						<td width="26%">
							<div align="left">
								<input name="btnQuery" type="button" class="button1"
									id="btnQuery" value="查询" onclick="queryItem()">
							</div>
						</td>
					</tr>
					<tr>
						<td height="16">
							<div align="right"></div>
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							<div align="right"></div>
						</td>
					</tr>
				</table>

			</div>
			<table width="95%" border="0" cellspacing="0" cellpadding="0"
				class="rd1" align="center">
				<tr>
					<td nowrap height="10" class="p2">
						物料信息
					</td>
					<td nowrap height="10" class="p3">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="95%" border="1" cellspacing="0" cellpadding="0"
				align="center" class="table1">
				<tr>
					<td width="35" class="rd6">
						<input type="checkbox" name="ifAll" onClick="checkAll()">
					</td>
					<td width="155" class="rd6">
						物料代码
					</td>
					<td width="155" class="rd6">
						物料名称
					</td>
					<td width="155" class="rd6">
						物料规格
					</td>
					<td width="155" class="rd6">
						物料型号
					</td>
					<td width="138" class="rd6">
						类别
					</td>
					<td width="101" class="rd6">
						计量单位
					</td>
				</tr>
				<%-- <%
					for(Iterator iter = pageModel.getDataList().iterator(); iter.hasNext();) {
						Item item = (Item)iter.next();
				%> --%>
				<tr>

					<td class="rd8">
						<input type="checkbox" name="selectFlag" class="checkbox1" value="<%-- <%=/* item.getItemNo() */ %> --%>">
					</td>
					<td class="rd8">
						<a href="#"
							onClick="window.open('item_detail', '物料详细信息', 'width=400, height=400, scrollbars=no')"><%-- <%=/* item.getItemNo()  */%> --%></a>
					</td>
					
					<td class="rd8">
					<%-- 	<%=/* item.getItemName() */ %> --%>
					</td>
					<td class="rd8">
					<%-- 	<%=/* item.getSpec() */ %> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* item.getPattern()  */%> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* item.getCategory().getName() */ %> --%>
					</td>
					<td class="rd8">
						<%-- <%=/* item.getUnit().getName() */ %> --%>
					</td>
				</tr>
				<%-- <%
					}
				%> --%>
			</table>
			<table width="95%" height="30" border="0" align="center"
				cellpadding="0" cellspacing="0" class="rd1">
				<tr>
					<td nowrap class="rd19" height="2" width="36%">
						<div align="left">
							<font color="#FFFFFF">&nbsp;共&nbsp<%-- <%=/* pageModel.getTotalPage()  */%> --%>&nbsp页</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<font color="#FFFFFF">当前第</font>&nbsp
							<font color="#FF0000"><%-- <%=/* pageNo */ %> --%></font>&nbsp
							<font color="#FFFFFF">页</font>
						</div>
					</td>
					<td nowrap class="rd19" width="64%">
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
								value="添加" onClick="addItem()">
							<input name="btnDelete" class="button1" type="button"
								id="btnDelete" value="删除" onClick="deleteItem()">
							<input name="btnModify" class="button1" type="button"
								id="btnModify" value="修改" onClick="modifyItem()">
							<input name="btnUpload" class="button1" type="button"
								id="btnUpload" value="上传图片" onClick="uploadPic4Item()">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
