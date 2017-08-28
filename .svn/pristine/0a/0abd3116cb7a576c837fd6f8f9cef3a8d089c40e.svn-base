<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src=”http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js”></script>


<title>系统菜单</title>
</head>

<body text="#FFFFFF" topmargin="0" leftmargin=0>
	<SCRIPT LANGUAGE="JAVASCRIPT">
			OutBarFolder1 = new Array("分销商库存管理", "images/admin.gif", "分销商库存数量初始化", "flowcard/inv_init_qty_maint.jsp", "parent.parent.main", "images/admin.gif", "分销商库存初始化确认", "flowcard/inv_init_qty_confirm.jsp", "parent.parent.main", "images/admin.gif", "流向单维护", "flowcard/flow_card_maint.jsp", "parent.parent.main", "images/admin.gif", "流向单审核", "flowcard/flow_card_audit.jsp", "parent.parent.main", "images/admin.gif", "流向单抽查", "flowcard/flow_card_spot_test.jsp", "parent.parent.main", "images/admin.gif", "流向单复审", "flowcard/flow_card_rehear.jsp", "parent.parent.main", "images/admin.gif", "盘点结果维护", "flowcard/checkvou_maint.jsp", "parent.parent.main", "images/admin.gif", "盘点结果审核", "flowcard/checkvou_audit.jsp", "parent.parent.main");
			OutBarFolder2 = new Array("分销费管理");
			OutBarFolder3 = new Array("结帐管理");
			OutBarFolder4 = new Array("付款结算管理");
			OutBarFolder5 = new Array("统计报表管理", "images/admin.gif", "分销商级别分布图", "statreport/client_level_chart.jsp", "parent.parent.main", "images/admin.gif", "流向单录入审核报告", "statreport/flow_card_audit_report.jsp", "parent.parent.main", "images/admin.gif", "流向单抽查报告", "statreport/flow_card_spot_test_report.jsp", "parent.parent.main", "images/admin.gif", "分销商月度分销(调拨)明细表", "statreport/client_detail_month_per.jsp", "parent.parent.main", "images/admin.gif", "分销商库存报表", "statreport/client_stock_report.jsp", "parent.parent.main");
			OutBarFolder6 = new Array("基础数据管理", "images/admin.gif", "会计核算期间维护", "basedata/fiscal_year_period_maint.jsp", "parent.parent.main", "images/admin.gif", "物料维护", "basedata/item_maint.jsp", "parent.parent.main", "images/admin.gif", "分销商维护", "basedata/client_maint.jsp", "parent.parent.main", "images/admin.gif", "终端客户维护(医院)", "basedata/temi_client_maint.jsp", "parent.parent.main");
			OutBarFolder7 = new Array("系统管理", "images/admin.gif", "用户维护", "sysmgr/user_maint.jsp", "parent.parent.main", "images/admin.gif", "修改密码", "sysmgr/password_modify.jsp", "parent.parent.main");
			OutBarFolder8 = new Array("");
		</SCRIPT>
	<SCRIPT LANGUAGE="JAVASCRIPT">
			OB_Top = 0; //菜单距离顶部的象素值；
			OB_Left = 0; //菜单距离左侧的象素值；
			OB_Margin = 10; //top and bottom margins between icons and borders
			OB_Width = 172; //菜单宽度
			newHeight = window.screen.height
			OB_Height = newHeight - 225; //菜单高度
			OB_SlideSpeed = 10; //菜单运动速度
			OB_BackgroundColor = "#000000"; //背景色
			OB_ItemsSpacing = 25; //2个图标间的距离
			OB_BorderWidth = 3; //border宽度
			OB_BorderStyle = "ridge"; //border风格
			OB_BorderColor = "#dddddd"; //border颜色
			OB_IconsWidth = 32; //图标宽度
			OB_IconsHeight = 32; //图标高度
			OB_ButtonFontFamily = "arial"; //按钮上字体的字型
			OB_ButtonFontSize = 9; //按钮上字体大小 
			OB_ButtonFontColor = "black"; //按钮上字体颜色    
			OB_ButtonHeight = 22; //按钮的高度
			OB_LabelFontFamily = "arial"; //LOGO下字体的字型
			OB_LabelFontSize = 9; //LOGO下面的字体大小
			OB_LabelFontColor = "white"; //LOGO下的字体颜色
			OB_LabelMargin = 3; //margin between labels and icons
			OB_DownArrow = "images/arrowup.gif"; //向下滚动的logo箭头
			OB_UpArrow = "images/arrowdown.gif"; //向上滚动的logo箭头
			OB_ArrowWidth = 15; //箭头的宽度
			OB_ArrowHeight = 15; //箭头的高度
			OB_ArrowSlideSpeed = 10; //项目列表滚动的速度；

			/*以下的代码中你需要改动菜单的数目与实际一致，本例用了4个按钮菜单。*/
			function MakeItems(Folder, zorder, top) {
				var items = 0;
				var folderWidth = (OB_Width - OB_BorderWidth * 2);
				while(Folder[items + 1])
					items += 4; //需要改这里及下面的4；
				items /= 4;
				document.write("<DIV id='OB_Folder" + zorder + "' style='position:absolute;left:0;top:" + top + ";width:" + folderWidth + ";height:" + (OB_Margin * 2 + items * (OB_IconsHeight + OB_LabelFontSize + OB_LabelMargin) + (items - 1) * OB_ItemsSpacing) + ";z-index:" + zorder + ";clip:rect(0 0 0 0);'>");
				for(var i = 1; i < items * 4; i += 4) {
					document.write("<div targetFrame='" + Folder[i + 3] + "' link='" + Folder[i + 2] + "' onMouseDown='OutlookLikeBar.ItemClicked(this)' onMouseUp='OutlookLikeBar.ItemSelected(this)' onMouseOver='OutlookLikeBar.OverItems(this)' onMouseOut='OutlookLikeBar.OutItems(this)' style='position:absolute;left:" + (Math.ceil((OB_Width - OB_BorderWidth * 2 - OB_IconsHeight) / 2) - 1) + ";top:" + (OB_Margin + Math.ceil((i - 1) / 4) * (OB_ItemsSpacing + OB_LabelFontSize + OB_IconsHeight)) + ";cursor:hand;clip:rect(0 " + OB_IconsWidth + " " + OB_IconsHeight + " 0;width:" + OB_IconsWidth + ";height:" + OB_IconsHeight + "'>");
					document.write("<img src='" + Folder[i] + "'>");
					document.write("</div>");
					document.write("<div align='center' style='position:absolute;width:160;left:0;top:" + (OB_LabelMargin + OB_IconsHeight + OB_Margin + Math.ceil((i - 1) / 4) * (OB_ItemsSpacing + OB_LabelFontSize + OB_IconsHeight)) + ";font-family:" + OB_LabelFontFamily + ";font-size:" + OB_LabelFontSize + "pt;color:" + OB_LabelFontColor + "'>");
					document.write(Folder[i + 1]);
					document.write("</div>");
				}
				document.write("</DIV>");
			}

			//***************************
			//* Outlook-Like Bar Object *
			//***************************
			function OutBar(width, height, items, buttonHeight, borderWidth, slideSpeed, slideArrowValue, ArrowSlideSpeed) {
				this.currentFolder = 1;
				this.currentItem = null;
				this.slideCount = 0;
				this.slideStep = 1;
				this.slideArrowValue = slideArrowValue;
				this.slideSpeed = slideSpeed;
				this.borderWidth = borderWidth;
				this.width = width;
				this.visibleAreaHeight = height - 2 * borderWidth - items * buttonHeight;
				this.visibleAreaWidth = width;
				this.FolderClicked = FolderClicked;
				this.SlideFolders = SlideFolders;
				this.ItemClicked = ItemClicked;
				this.ItemSelected = ItemSelected;
				this.OverItems = OverItems;
				this.OutItems = OutItems;
				this.OverArrow = OverArrow;
				this.OutArrow = OutArrow;
				this.ArrowClicked = ArrowClicked;
				this.ArrowSelected = ArrowSelected;
				this.ArrowSlideSpeed = ArrowSlideSpeed;
				this.SlideItems = SlideItems;
				this.SlideItemsAction = SlideItemsAction;
				this.Start = Start;
				this.ClipFolder = ClipFolder;
				this.SetArrows = SetArrows;
				this.HideArrows = HideArrows;
				this.sliding = false;
				this.items = items;
				this.started = false;
				this.Start();
			}

			function FolderClicked(folder) {
				if(this.sliding)
					return;
				if(folder == this.currentFolder)
					return;
				this.sliding = true;
				this.slideCount = this.visibleAreaHeight;
				this.slideStep = 1;
				this.countStep = 0;
				this.HideArrows();
				this.SlideFolders(folder, document.all["OB_Button" + folder].position == "DOWN");
			}

			function SlideFolders(folder, down) {
				var step;
				if(down) {
					this.slideCount -= Math.floor(this.slideStep);
					if(this.slideCount < 0)
						this.slideStep += this.slideCount;
					step = Math.floor(this.slideStep);
					for(var i = 2; i <= folder; i++)
						if(document.all["OB_Button" + i].position == "DOWN") {
							document.all["OB_Button" + i].style.pixelTop -= step;
							document.all["OB_Folder" + i].style.pixelTop -= step;
						}

					filter = /rect\((\d*)px (\d*)px (\d*)px (\d*)px\)/;

					var clipString = document.all["OB_Folder" + folder].style.clip;
					var clip = clipString.match(filter);
					this.ClipFolder(folder, parseInt(clip[1]), this.visibleAreaWidth, (parseInt(clip[3]) + step), 0);

					var clipString = document.all["OB_Folder" + this.currentFolder].style.clip;
					var clip = clipString.match(filter);
					this.ClipFolder(this.currentFolder, parseInt(clip[1]), this.visibleAreaWidth, (parseInt(clip[3]) - step), 0);

					this.slideStep *= this.slideSpeed;
					if(this.slideCount > 0)
						setTimeout("OutlookLikeBar.SlideFolders(" + folder + ",true)", 20);
					else {
						for(var k = 2; k <= folder; k++)
							document.all["OB_Button" + k].position = "UP";
						this.currentFolder = folder;
						this.SetArrows();
						this.sliding = false;
					}
				} else {
					this.slideCount -= Math.floor(this.slideStep);
					if(this.slideCount < 0)
						this.slideStep += this.slideCount;
					step = Math.floor(this.slideStep);
					for(var i = folder + 1; i <= this.items; i++)
						if(document.all["OB_Button" + i].position == "UP") {
							document.all["OB_Button" + i].style.pixelTop += step;
							document.all["OB_Folder" + i].style.pixelTop += step;
						}

					filter = /rect\((\d*)px (\d*)px (\d*)px (\d*)px\)/;

					var clipString = document.all["OB_Folder" + folder].style.clip;
					var clip = clipString.match(filter);
					this.ClipFolder(folder, parseInt(clip[1]), this.visibleAreaWidth, (parseInt(clip[3]) + step), 0);
					var clipString = document.all["OB_Folder" + this.currentFolder].style.clip;
					var clip = clipString.match(filter);
					this.ClipFolder(this.currentFolder, parseInt(clip[1]), this.visibleAreaWidth, (parseInt(clip[3]) - step), 0);

					this.slideStep *= this.slideSpeed;
					if(this.slideCount > 0)
						setTimeout("OutlookLikeBar.SlideFolders(" + folder + ",false)", 20);
					else {
						for(var k = folder + 1; k <= this.items; k++)
							document.all["OB_Button" + k].position = "DOWN";
						this.currentFolder = folder;
						this.SetArrows();
						this.sliding = false;
					}
				}
			}

			function ItemClicked(item) {
				if(this.sliding)
					return;
				item.style.border = "2 inset #ffffff";
			}

			function ItemSelected(item) {
				if(this.sliding)
					return;
				item.style.border = "1 outset #ffffff";
				if(item.link.indexOf("javascript") != -1)
					eval(item.link)
				else
					eval(item.targetFrame + ".location='" + item.link + "'");
			}

			function OverItems(item) {
				if(this.sliding)
					return;
				item.style.border = "1 outset #ffffff";
			}

			function OutItems(item) {
				if(this.sliding)
					return;
				item.style.border = "0 none black";
			}

			function ArrowClicked(arrow) {
				if(this.sliding)
					return;
				arrow.style.border = "1 inset #ffffff";
			}

			function ArrowSelected(arrow) {
				if(this.sliding)
					return;
				arrow.style.border = "0 none black";
				this.SlideItems(arrow.id == "OB_SlideUp");
			}

			function OverArrow(arrow) {
				if(this.sliding)
					return;
				arrow.style.border = "1 outset #ffffff";
			}

			function OutArrow(arrow) {
				if(this.sliding)
					return;
				arrow.style.border = "0 none black";
			}

			function ClipFolder(folder, top, right, bottom, left) {
				document.all["OB_Folder" + folder].style.clip = clip = 'rect(' + top + ' ' + right + ' ' + bottom + ' ' + left + ')';
			}

			function Start() {
				if(!this.started) {
					this.ClipFolder(1, 0, this.visibleAreaWidth, this.visibleAreaHeight, 0);
					this.SetArrows();
				}
			}

			function SetArrows() {
				document.all["OB_SlideDown"].style.pixelTop = document.all["OB_Button" + this.currentFolder].style.pixelTop + document.all["OB_Button" + this.currentFolder].style.pixelHeight + 20;
				document.all["OB_SlideDown"].style.pixelLeft = this.width - document.all["OB_SlideUp"].width - this.borderWidth - 10;
				document.all["OB_SlideUp"].style.pixelTop = document.all["OB_Button" + this.currentFolder].style.pixelTop + document.all["OB_Button" + this.currentFolder].style.pixelHeight + this.visibleAreaHeight - document.all["OB_SlideDown"].height - 20;
				document.all["OB_SlideUp"].style.pixelLeft = this.width - document.all["OB_SlideDown"].width - this.borderWidth - 10;

				var folder = document.all["OB_Folder" + this.currentFolder].style;
				var startTop = document.all["OB_Button" + this.currentFolder].style.pixelTop + document.all["OB_Button" + this.currentFolder].style.pixelHeight;

				if(folder.pixelTop < startTop)
					document.all["OB_SlideDown"].style.visibility = "visible";
				else
					document.all["OB_SlideDown"].style.visibility = "hidden";

				if(folder.pixelHeight - (startTop - folder.pixelTop) > this.visibleAreaHeight)
					document.all["OB_SlideUp"].style.visibility = "visible";
				else
					document.all["OB_SlideUp"].style.visibility = "hidden";
			}

			function HideArrows() {
				document.all["OB_SlideUp"].style.visibility = "hidden";
				document.all["OB_SlideDown"].style.visibility = "hidden";
			}

			function SlideItems(up) {
				this.sliding = true;
				this.slideCount = Math.floor(this.slideArrowValue / this.ArrowSlideSpeed);
				up ? this.SlideItemsAction(-this.ArrowSlideSpeed) : this.SlideItemsAction(this.ArrowSlideSpeed);
			}

			function SlideItemsAction(value) {
				document.all["OB_Folder" + this.currentFolder].style.pixelTop += value;
				filter = /rect\((\d*)px (\d*)px (\d*)px (\d*)px\)/;
				var clipString = document.all["OB_Folder" + this.currentFolder].style.clip;
				var clip = clipString.match(filter);
				this.ClipFolder(this.currentFolder, (parseInt(clip[1]) - value), parseInt(clip[2]), (parseInt(clip[3]) - value), parseInt(clip[4]));
				this.slideCount--;
				if(this.slideCount > 0)
					setTimeout("OutlookLikeBar.SlideItemsAction(" + value + ")", 20);
				else {
					if(Math.abs(value) * this.ArrowSlideSpeed != this.slideArrowValue) {
						document.all["OB_Folder" + this.currentFolder].style.pixelTop += (value / Math.abs(value) * (this.slideArrowValue % this.ArrowSlideSpeed));
						filter = /rect\((\d*)px (\d*)px (\d*)px (\d*)px\)/;
						var clipString = document.all["OB_Folder" + this.currentFolder].style.clip;
						var clip = clipString.match(filter);
						this.ClipFolder(this.currentFolder, (parseInt(clip[1]) - (value / Math.abs(value) * (this.slideArrowValue % this.ArrowSlideSpeed))), parseInt(clip[2]), (parseInt(clip[3]) - (value / Math.abs(value) * (this.slideArrowValue % this.ArrowSlideSpeed))), parseInt(clip[4]));
					}
					this.SetArrows();
					this.sliding = false;
				}
			}
		</script>
	<script>
			if(document.all) {
				document.write("<DIV id='OutlookLikeBar' style='position:absolute;top:" + OB_Top + ";left:" + OB_Left + ";width:" + OB_Width + ";height:" + OB_Height + ";border:" + OB_BorderWidth + " " + OB_BorderStyle + " " + OB_BorderColor + ";background-color:" + OB_BackgroundColor + ";z-index:0;visibility:hidden;clip:rect(0," + OB_Width + "," + OB_Height + ",0)'>");
				document.write("<img onMouseUp='OutlookLikeBar.ArrowSelected(this)' onMouseDown='OutlookLikeBar.ArrowClicked(this)' onMouseOver='OutlookLikeBar.OverArrow(this)' onMouseOut='OutlookLikeBar.OutArrow(this)' id='OB_SlideUp' height='" + OB_ArrowHeight + "' width='" + OB_ArrowWidth + "' src='" + OB_UpArrow + "' style='position:absolute;top:0;left:0;cursor:hand;visibility:hidden;z-index:500'>");
				document.write("<img onMouseUp='OutlookLikeBar.ArrowSelected(this)' onMouseDown='OutlookLikeBar.ArrowClicked(this)' onMouseOver='OutlookLikeBar.OverArrow(this)' onMouseOut='OutlookLikeBar.OutArrow(this)' id='OB_SlideDown' height='" + OB_ArrowHeight + "' width='" + OB_ArrowWidth + "' src='" + OB_DownArrow + "' style='position:absolute;top:0;left:0;cursor:hand;visibility:hidden;z-index:500'>");
				j = 1;
				while(eval("window.OutBarFolder" + j))
					j++;
				i = j - 1;
				while(i > 0) {
					Folder = eval("OutBarFolder" + i)
					//		window.status="Outlook-Like Bar is making folder '"+Folder[0]+"'";
					if(i == 1) {
						document.write("<INPUT position='UP' id='OB_Button1' onDblClick='OutlookLikeBar.FolderClicked(" + i + ");this.blur()' onClick='OutlookLikeBar.FolderClicked(" + i + ");this.blur()' TYPE='button' value='" + Folder[0] + "' style='position:absolute;top:0;left:0;width:" + (OB_Width - 2 * OB_BorderWidth) + ";height:" + OB_ButtonHeight + ";font-family:" + OB_ButtonFontFamily + ";font-size:" + OB_ButtonFontSize + "pt;cursor:hand;color:" + OB_ButtonFontColor + ";z-index:100'>");
						MakeItems(Folder, i, OB_ButtonHeight);
					} else {
						document.write("<INPUT position='DOWN' id='OB_Button" + i + "' onDblClick='OutlookLikeBar.FolderClicked(" + i + ");this.blur()' onClick='OutlookLikeBar.FolderClicked(" + i + ");this.blur()' TYPE='button' value='" + Folder[0] + "' style='position:absolute;top:" + (OB_Height - (j - i) * OB_ButtonHeight - OB_BorderWidth * 2) + ";left:0;width:" + (OB_Width - 2 * OB_BorderWidth) + ";height:" + OB_ButtonHeight + ";font-family:" + OB_ButtonFontFamily + ";font-size:" + OB_ButtonFontSize + "pt;cursor:hand;color:" + OB_ButtonFontColor + ";z-index:100'>");
						MakeItems(Folder, i, (OB_Height - (j - i) * OB_ButtonHeight - OB_BorderWidth * 2) + OB_ButtonHeight);
					}

					i--;
				}
				document.write("</DIV>");
				var OutlookLikeBar = new OutBar(OB_Width, OB_Height, j - 1, OB_ButtonHeight, OB_BorderWidth, OB_SlideSpeed, OB_IconsHeight + OB_LabelFontSize + OB_LabelMargin + OB_ItemsSpacing, OB_ArrowSlideSpeed);
				document.all["OutlookLikeBar"].style.visibility = "visible";
			}
		</script>
</body>

</HTML>