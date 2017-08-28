<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加流向单维护</title>
		<link rel="stylesheet" href="../style/drp.css">
		<link href="../style/JSCalendar.css" rel=stylesheet type=text/css>
		<script src="../script/JSCalendar.js"></script>
		<script src="../script/client_validate.js"></script>
		<script language="javascript">
    var rowIndex = 0;
    
    
    function selectAimClient(index) {
		window.open('aim_client_select?index=' + index, '请选择需方客户', 'width=700, height=400, scrollbars=no');
    }   
     
    function selectItem(index) {
		window.open('item_select?index=' + index, '请选择物料', 'width=700, height=400, scrollbars=no');
    } 
     
    function addOneLineOnClick() {
		var row=tblFlowCardDetail.insertRow(tblFlowCardDetail.rows.length);
		var col = row.insertCell(0);
		col.innerHTML = "<input readonly=\"true\" maxLength=6 size=6 name=aimId><input type=button  value =...   name=btnSelectAimClient index=\""+ rowIndex +"\" onclick=\"selectAimClient(this.index)\">";
		col = row.insertCell(1);
		col.innerHTML = "<tr><input id=aimName name=aimName size=25 maxlength=25 readonly=\"true\">";
		col = row.insertCell(2);
		col.innerHTML = "<input readonly=\"true\" maxLength=6 size=6 name=itemNo><input type=button  value =...   name=btnSelectItem index=\""+ rowIndex +"\" onclick=\"selectItem(this.index)\">";
		col = row.insertCell(3);
		col.innerHTML = "<input id=itemName name=itemName size=25 maxlength=25 readonly=\"true\">";		
		col = row.insertCell(4);
		col.innerHTML = "<input id=spec name=spec size=10 maxlength=10 readonly=\"true\">";
		col = row.insertCell(5);
		col.innerHTML = "<input id=pattern name=pattern size=10 maxlength=10 readonly=\"true\">";
		col = row.insertCell(6);
		col.innerHTML = "<input id=unit name=unit size=4 maxlength=4 readonly=\"true\">";
		col = row.insertCell(7);
		col.innerHTML = "<input id=qty name=qty size=6 maxlength=6>";
		col = row.insertCell(8);
		col.innerHTML = "<input type='button' value='删除' id=btnDeleteLine name=btnDeleteLine onclick=\"return DeleteRow('row" + rowIndex + "')\"></tr>";
		row.setAttribute("id", "row" + rowIndex);
		row.setAttribute("name", "row" + rowIndex);
		rowIndex++;
	}
	
	function DeleteRow(rowTag){
 	    var i = tblFlowCardDetail.rows(rowTag).rowIndex;
 		var j;
		for(j=i;j<=rowIndex;j++) {	
			tblFlowCardDetail.rows(j).cells(0).all("btnSelectAimClient").index--;
			tblFlowCardDetail.rows(j).cells(2).all("btnSelectItem").index--;	
		}
       	tblFlowCardDetail.deleteRow(i);
		rowIndex--;
	}

	function modifyFlowCard() {
	
	}
	
	function goBack() {
		history.go(-1);
	}
</script>
	</head>

	<body class="body1">
		<div align="center">
			<form name="flowCardAddForm" method="post" action="">
				<table width="95%" border="0" cellspacing="2" cellpadding="2">
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="522" class="p1" height="2" nowrap>
							<img src="../images/mark_arrow_03.gif" width="14" height="14">
							&nbsp;
							<b>分销商库存管理&gt;&gt;流向单维护&gt;&gt;修改</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="11%" height="29">
							<div align="right">
								流向单号:
							</div>
						</td>
						<td width="8%">
							200706260001
						</td>
						<td width="14%">
							<div align="right">
								<font color="#FF0000">*</font>供方分销商代码:&nbsp;
							</div>
						</td>
						<td width="16%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectClient" type="button" id="btnSelectClient"
								value="..." class="button1"
								onClick="window.open('client_select', '选择分销商', 'width=700, height=400, scrollbars=no')">
						</td>
						<td width="13%">
							<div align="right">
								<div align="right">
									供方分销商名称:&nbsp;
								</div>
							</div>
						</td>
						<td width="29%">
							<input name="clientName" type="text" class="text1"
								id="clientName" size="40" maxlength="40" readonly="true">
						</td>
						<td width="5%">
							&nbsp;
						</td>
						<td width="4%">
							&nbsp;
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0"
					id="tblFlowCardDetail">
					<tr>
						<td nowrap>
							<div align="left">
								<font color="#FF0000">*</font>需方客户代码
							</div>
						</td>
						<td nowrap>
							<div align="left">
								需方客户名称
							</div>
						</td>
						<td nowrap>
							<div align="left">
								<font color="#FF0000">*</font>物料代码
							</div>
						</td>
						<td nowrap>
							<div align="left">
								物料名称
							</div>
						</td>
						<td nowrap>
							规格
						</td>
						<td nowrap>
							型号
						</td>
						<td nowrap>
							计量单位
						</td>
						<td nowrap>
							<font color="#FF0000">*</font>操作数量
						</td>
						<td nowrap>
							<div align="left">
								删除
							</div>
						</td>
					</tr>
				</table>
				<p>
					<input name="btnModifyLine" type="button" id="btnModifyLine"
						onClick="return addOneLineOnClick()" value="加入一行">
					<input name="btnSave" type="button" id="btnSave" value="保存"
						onClick="modifyFlowCard()">
					<input name="btnBack" type="button" id="btnBack" onClick="goBack()"
						value="返回">
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
