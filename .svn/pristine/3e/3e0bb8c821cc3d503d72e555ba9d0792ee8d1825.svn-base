<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@ page import="java.util.*" %>

<%@ page import="org.passionjava.drp.sysmgr.*" %>
<%@ page import="org.passionjava.drp.basedata.*" %>
<%@ page import="org.passionjava.drp.basedata.model.*" %>
<%@ page import="org.passionjava.drp.flowcard.model.*" %>
<%@ page import="org.passionjava.drp.flowcard.manager.*" %>

<%
 	String command = request.getParameter("command");
    if("add".equals(command)) {
    	FlowCard flowCard = new FlowCard();
    	//核算年
    	flowCard.setFiscalYear(2012);
    	//核算月
    	flowCard.setFiscalPeriod(4);
    	
    	//供方分销商代码
    	Client client = new Client();
    	client.setClientId(request.getParameter("clientId"));
    	flowCard.setClient(client);
    	
    	//操作类型 调拨D 调整 A
    	flowCard.setOprType("D");
    	flowCard.setRecordDate(new Date());
    	
    	//录入人
    	User recorder = (User)session.getAttribute("user");
    	flowCard.setRecorder(recorder);
    	
    	//状态 录入为S, 送审为N
    	flowCard.setVouSts("N");
    	
    	String[] aimIds = request.getParameterValues("aimId");
    	String[] itemNos = request.getParameterValues("itemNo");
    	String[] qtys = request.getParameterValues("qty");
    	
    	List<FlowCardDetail> flowCardDetailList = new ArrayList<FlowCardDetail>();
    	for(int i = 0; i < aimIds.length; i++) {
    		
    		FlowCardDetail flowCardDetail = new FlowCardDetail();
    		flowCardDetail.setVouNo(flowCard.getVouNo());
    		
    		AimClient aimClient = new AimClient();
    		aimClient.setId(aimIds[i]);
    		flowCardDetail.setAimClient(aimClient);
    		
    		Item item = new Item();
    		item.setItemNo(itemNos[i]);
    		flowCardDetail.setItem(item);
    		
    		flowCardDetail.setQty(Double.parseDouble(qtys[i]));
    		
    		flowCardDetail.setAdjustFlag("N");
    		
    		flowCardDetailList.add(flowCardDetail);
    	}
    	flowCard.setFlowCardDetailList(flowCardDetailList);
    	
    	FlowCardManager flowCardManager = (FlowCardManager)getServletContext().getAttribute("flowCardManager");
    	flowCardManager.addFlowCard(flowCard);
    	out.println("添加流向单成功");
    }
%> --%>
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
		window.open('aim_client_select.jsp?index=' + index, '请选择需方客户', 'width=700, height=400, scrollbars=no');
    }   
     
    function selectItem(index) {
		window.open('item_select.jsp?index=' + index, '请选择物料', 'width=700, height=400, scrollbars=no');
    } 
     
    function addOneLineOnClick() {
		var row=tblFlowCardDetail.insertRow(tblFlowCardDetail.rows.length);
		var col = row.insertCell(0);
		col.innerHTML = "<input  readonly=\"true\" maxLength=6 size=6 name=\"aimId\"><input type=\"button\"  value =...   name=\"btnSelectAimClient\" index=\""+ rowIndex +"\" onclick=\"selectAimClient(this.index)\">";
		col = row.insertCell(1);
		col.innerHTML = "<tr><input id=\"aimName\" name=aimName size=25 maxlength=25 readonly=\"true\">";
		col = row.insertCell(2);
		col.innerHTML = "<input readonly=\"true\" maxLength=6 size=6 name=\"itemNo\"><input type=button  value =...   name=btnSelectItem index=\""+ rowIndex +"\" onclick=\"selectItem(this.index)\">";
		col = row.insertCell(3);
		col.innerHTML = "<input id=itemName name=itemName size=25 maxlength=25 readonly=\"true\">";		
		col = row.insertCell(4);
		col.innerHTML = "<input id=spec name=spec size=10 maxlength=10 readonly=\"true\">";
		col = row.insertCell(5);
		col.innerHTML = "<input id=pattern name=pattern size=10 maxlength=10 readonly=\"true\">";
		col = row.insertCell(6);
		col.innerHTML = "<input id=unit name=unit size=4 maxlength=4 readonly=\"true\">";
		col = row.insertCell(7);
		col.innerHTML = "<input id=qty name=qty size=6 maxlength=6 onKeypress=\"qtyOnKeypress()\">";
		col = row.insertCell(8);
		col.innerHTML = "<input type='button' value='删除' id=btnDeleteLine name=btnDeleteLine onclick=\"return DeleteRow('row" + rowIndex + "')\"></tr>";
		row.setAttribute("id", "row" + rowIndex);  //"row0"
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

	function addFlowCard() {
		
		if(trim(document.getElementById("clientId").value).length ==0 ) {
			alert("分销商代码不能为空!");
			return;
		}
		
		var aimIds = document.getElementsByName("aimId");
		var itemNos = document.getElementsByName("itemNo");
		var qtys = document.getElementsByName("qty");
		
		for(var i = 0; i < aimIds.length; i++) {
			if(trim(aimIds[i].value).length == 0 
				&& trim(itemNos[i].value).length ==0
				&&trim(qtys[i].value).length ==0  
					
			  ) {
			  alert("请删除多余的空行");
			  return;
			}
	
			if(trim(aimIds[i].value).length == 0 ) {
				alert("需方分销商的代码不能为空");
				return;
			}
			
			if(trim(itemNos[i].value).length == 0 ) {
				alert("物料代码不能为空");
				return;
			}
			
			if(trim(qtys[i].value).length == 0 ) {
				alert("操作数量不能为空");
				return;
			}
			
			with(document.getElementById("flowCardForm")) {
				action = "flow_card_add.jsp";
				method = "post";
				submit();
			}
			
	    }
	}
	
	function qtyOnKeypress() {
   	  //alert(window.event.keyCode);
    }
	
	function goBack() {
		window.self.location="flow_card_maint.jsp"
	}	

</script>
	</head>

	<body class="body1">
		<div align="center">
			<form name="flowCardForm" id="flowCardForm">
				<input type="hidden" name="command" value="add"/>
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
							<b>分销商库存管理&gt;&gt;流向单维护&gt;&gt;添加</b>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="15%" height="29">
							<div align="right">
								<font color="#FF0000">*</font>供方分销商代码:&nbsp;
							</div>
						</td>
						<td width="16%">
							<input name="clientId" type="text" class="text1" id="clientId"
								size="10" maxlength="10" readonly="true">
							<input name="btnSelectClient" type="button" id="btnSelectClient"
								value="..." class="button1"
								onClick="window.open('client_select.jsp', '选择分销商', 'width=700, height=400, scrollbars=no')">
						</td>
						<td width="16%">
							<div align="right">
								供方分销商名称:&nbsp;
							</div>
						</td>
						<td width="29%">
							<input name="clientName" type="text" class="text1"
								id="clientName" size="40" maxlength="40" readonly="true">
						</td>
						<td width="7%">
							&nbsp;
						</td>
						<td width="17%">
							<label></label>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0"
					name="tblFlowCardDetail" id="tblFlowCardDetail">
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
					<input name="btnAddLine" type="button" id="btnAddLine"
						onClick="return addOneLineOnClick()" value="加入一行">
					<input name="btnSave" type="button" id="btnSave" value="保存"
						onClick="addFlowCard()">
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
