<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
 <%-- <%@ page import="java.util.*" %>
 
 <%@ page import="org.passionjava.drp.util.*" %>
 <%@ page import="org.passionjava.drp.basedata.manager.*" %>
 <%@ page import="org.passionjava.drp.basedata.*" %>
 <%@ page import="org.passionjava.drp.basedata.model.*" %>
 <%
 	if("add".equals(request.getParameter("command"))) {
 		Item item = new Item();
		item.setItemNo(request.getParameter("itemNo"));
		item.setItemName(request.getParameter("itemName"));
		item.setSpec(request.getParameter("spec"));
		item.setPattern(request.getParameter("pattern"));
		
		ItemUnit iu = new ItemUnit();
		iu.setId(request.getParameter("unit"));
		item.setUnit(iu);
		
		ItemCategory ic = new ItemCategory();
		ic.setId(request.getParameter("category"));
		item.setCategory(ic);
		
		//SigItemManager.getInstance().addItem(item);
		//ItemManager itemManager = new ItemManagerImpl(ItemDaoFactoryReader.read());
 		ItemManager itemManager = (ItemManager)getServletContext().getAttribute("itemManager");
 		itemManager.addItem(item);
 		out.println("添加物料成功!!");
 	}
 
 %> --%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>添加物料</title>
		<link rel="stylesheet" href="../style/drp.css">
		<script src="../script/client_validate.js"></script>
		<script type="text/javascript">
			function addItem() {
				with(document.getElementById("itemForm")) {
					action = "item_add.jsp?command=add";
					method = "post";
					submit();
				}
			}
		</script>
	</head>

	<body class="body1">
		<form name="itemForm"  id="itemForm">
			<div align="center">
				<table width="95%" border="0" cellspacing="2" cellpadding="2">
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
							<b>基础数据管理&gt;&gt;物料维护&gt;&gt;添加</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="22%" height="29">
							<div align="right">
								<font color="#FF0000">*</font>物料代码:&nbsp;
							</div>
						</td>
						<td width="78%">
							<input name="itemNo" type="text" class="text1" id="itemNo"
								size="10" maxlength="10">
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
								<%-- <%
								 List<ItemCategory> categoryList = DataDictManager.getInstance().getItemCategoryList();
								 for(Iterator<ItemCategory> iter = categoryList.iterator(); iter.hasNext();) {
									 ItemCategory ic = iter.next();
								%>
								<option value="<%=ic.getId() %>">
									<%=ic.getName() %>
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
								<font color="#FF0000">*</font>计量单位:&nbsp;
							</div>
						</td>
						<td>
							<select name="unit" class="select1" id="unit">
								<%-- <%
								 List<ItemUnit> unitList = DataDictManager.getInstance().getItemUnitList();
								 for(Iterator<ItemUnit> iter = unitList.iterator(); iter.hasNext();) {
									 ItemUnit iu = iter.next();
								%>
								<option value="<%=iu.getId() %>">
									<%=iu.getName() %>
								</option>
								<%
								}
								%> --%>
							</select>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input name="btnAdd" class="button1" type="button" id="btnAdd"
						value="添加" onclick="addItem()">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnBack" class="button1" type="button" id="btnBack"
						value="返回" onClick="history.go(-1)">
				</div>
			</div>
		</form>
	</body>
</html>
