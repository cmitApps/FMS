<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="ASPFundManagement.Dashboard" %>
<!DOCTYPE html/>

<html id="Html" lang="en" class="no-js" runat="server"><!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
	<title>Dashboard - Fund Management</title>
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="" name="description">
	<meta content="" name="author">
	<meta name="MobileOptimized" content="320">
    <link href="css/style.css" rel="stylesheet" type="text/css">      
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/uniform.default.css" rel="stylesheet" type="text/css">
	<link href="css/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
	<link href="css/fullcalendar.css" rel="stylesheet" type="text/css">
	<link href="css/jqvmap.css" rel="stylesheet" type="text/css">
	<link href="css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css">
	<link href="css/style-conquer.css" rel="stylesheet" type="text/css">
	<link href="css/style-responsive.css" rel="stylesheet" type="text/css">
	<link href="css/plugins.css" rel="stylesheet" type="text/css">
	<link href="css/tasks.css" rel="stylesheet" type="text/css">
	<link href="css/default.css" rel="stylesheet" type="text/css" id="style_color"><!-- HEADER VALUES -->
	<link href="css/custom.css" rel="stylesheet" type="text/css">
    <link href="css/form.css" rel="stylesheet" type="text/css">
	
	<link rel="shortcut icon" href="#">
    <script type="text/javascript" src="jquery/ajaxJson.js"></script>
    <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type ="text/javascript" src="jquery/CSFundDashBoard.js"></script>
  
    <script type="text/javascript">    
    </script>

<style type="text/css">
   .jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
</style>
</head>
<!-- END HEAD -->
<link rel="shortcut icon" type="image/x-icon" href="images/favFMS.ico"/>
<!-- BEGIN BODY -->
<body class="page-header-fixed" style="">

	<!-- BEGIN HEADER -->   
	<div class="header navbar navbar-inverse navbar-fixed-top" >
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->  

			<a class="navbar-brand" href="csfundlogin.aspx" style="margin-top:0px; width:340px">
 			  <img src="images/FMSLogo2.png" alt="logo" class="img-responsive">
			</a>
			
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER --> 
			<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			   <img src="images/menu-toggler.png" alt="">
			</a> 
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right" style="margin-top:22px;">
				<li class="dropdown user" style="width:120px">
					<a class="dropdown-toggle">					
     					   <div style="text-align:right"><span class="username" id="systemDate"></span></div>
					</a>
                    
				</li>
               
				<li class="devider">&nbsp;</li>
<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">					
  					   <span class="username"></span>
					   <i class="fa fa-angle-down"></i> </a>
					<ul class="dropdown-menu">
						<li><a href="#" id="btnAccount"><i class="fa fa-user"></i> Modify Account</a> </li>												
						<li class="divider"></li>						
						<li><a href="#" id="btnLogout"><i class="fa fa-key"></i> Log Out</a>						</li>
					</ul>
				</li>
<!-- END USER LOGIN DROPDOWN -->                                
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
<span class="style1"></span>
<div class="clearfix"></div>
    
	
    <!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR MENU -->
	<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->        
			<ul class="page-sidebar-menu">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler"></div>
					<div class="clearfix"></div>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li>
					
			 <li id="btnProjection" style="visibility:hidden">
					<a href="javascript:;">
					<i class="fa fa-tasks"></i> 
					<span class="title">Projection</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
                        <li>
							<a href="CSFund.aspx">
							<i class="fa fa-spinner"></i> 
							Projection
							</a>		
						</li>												
					</ul>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="fa  fa-briefcase"></i> 
					<span class="title">Transaction</span>
					<span class="arrow"></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="CashFundRequest.aspx">
							<i class="fa fa-credit-card"></i> 
							Fund Request
							<span class="arrow"></span>
							</a>
							
						</li>
						<li>
							<a href="CSFundTransfer.aspx">
							<i class="fa fa-credit-card"></i> 
							Fund Transfer
							<span class="arrow"></span>
							</a>
							
						</li>
						
					</ul>
				</li>
				
                <li class="">
					<a href="loadreport.aspx">
					<i class="fa fa-archive"></i>  
					<span class="title">View Reports</span>
					<span class=""></span>
					</a>
				</li>
				
				
				<li class="last " id="btnUtils" style="visibility:hidden">
					<a href="Usermanagement.aspx">
					<i class="fa fa-group"></i> 
					<span class="title">Utilities</span>
					</a>
				</li>
			</ul>
			
		</div>
		<!-- END SIDEBAR MENU-->
        
		<!-- BEGIN PAGE -->
		<div class="page-content">
			      
			
			
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE / SLOGAN-->
					<h3 class="page-title">User Dashboard</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="dashboard.aspx">Home</a> 
							<i class="fa fa-angle-right"></i>						</li>
						
					</ul>
					<!-- END PAGE TITLE / SLOGAN-->
				</div>
		  </div>
			<!-- END PAGE HEADER-->
            
			<form runat="server" id="form1">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True" EnableScriptGlobalization="True" />
         <%--   <span class="label label-success"><i class="fa fa-map-marker"></i> 123</span>
		    <span class="label label-warning"><i class="fa fa-comment"></i> 45</span>
		    <span class="label label-info"><i class="fa fa-bullhorn"></i> 6</span>	--%>

            <br />
            <div class="col-md-3 col-sm-6">
			    <div class="circle-stat stat-block">
				    <div class="visual">
					    <div style="display: inline; width: 100px; height: 100px;">
                            <a href="CSFund.aspx"><canvas width="100" height="100"></canvas>
                            <input class="knobify" runat="server" id="projectionpercentage" data-width="115" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="" data-max="100" data-min="1" 
                                readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; 
                                border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; 
                                color: rgb(135, 206, 235); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;">
                                </a>
					    </div>
				    </div>
                    <div class="details">
						    <div class="title">   <i class="fa fa-caret-right"><a href="CSFund.aspx"> Fund Projection</a></i></div>
						    <div class="number"><asp:Label ID="lblProjectionTotal" runat="server" Text="Label"></asp:Label> Encoded</div>
                               <br />
                               <br />
                            <span class="label label-danger"><i class="fa fa-exclamation">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblProjectionPending" runat="server" Text="Label" ></asp:Label></i></span>
                               <br />
                               <br />
                            <span class="label label-success"><i class="fa fa-check-square-o">&nbsp;<asp:Label ID="lblProjectionApproved" runat="server" Text="Label"></asp:Label></i> </span>
                               <br />
                               <br />
                               <br />
                               <br />
                               <br />
                               <br />
				    </div>
			    </div>
		    </div>
               
              <div class="col-md-3 col-sm-6">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 1000px; height: 100px;">
                                <a href="CSFundTransfer.aspx">
                                <canvas width="100" height="100"></canvas>
                                <input  class="knobify"  runat="server" id="transferpercentage" data-width="115" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="" data-max="100" data-min="1" 
                                    readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; 
                                    border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; 
                                    color: rgb(135, 206, 235); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;">
                                    </a>
							</div>
						</div>
                     <div class="details">
                            <div class="title"> <i class="fa fa-caret-right"><a href="CSFundTransfer.aspx"> Fund Transfer</a></i></div>
							<div class="number"><asp:Label ID="lblTransferTotal" runat="server" Text="Label"></asp:Label>  Encoded</div>
                            <br />
                            <br />
                            <span class="label label-danger"><i class="fa fa-exclamation">&nbsp;&nbsp;&nbsp;<asp:Label ID="lblTransferPending" runat="server" Text="Label"></asp:Label></i></span>
                            <br />
                            <br />
                            <span class="label label-success"><i class="fa fa-check-square-o">&nbsp;<asp:Label ID="lblTransferAcknowledge" runat="server" Text="Label"></asp:Label></i>  </span>
                            <br />
                            <br />
                            <span class="label label-success"><i class="fa fa-times">&nbsp;&nbsp;<asp:Label ID="lblTransferCancelled" runat="server" Text="Label"></asp:Label></i>  </span>
                             <br />
                            <br />
                            <br />
                            <br />
                         
						    <%--<span class="label label-info"><i class="fa fa-bullhorn"></i><asp:Label ID="lblTransferCancelled" runat="server" Text="Label"></asp:Label>  Cancelled</span>--%>
        			</div>
					</div>
            
				</div>
                    
            <div class="col-md-3 col-sm-6">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 100px; height: 100px;"> <a href="CashFundRequest.aspx"><canvas width="100" height="100"></canvas>
                            <input class="knobify"  runat="server" id="requestpercentage" data-width="115" data-fgcolor="#66EE66" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="" data-max="100" data-min="1" 
                                readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; 
                                background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; 
                                color: rgb(102, 238, 102); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;">
							</a>
                            </div>
						</div>
						<div class="details">
						        <div class="title"><i class="fa fa-caret-right"> <a href="CashFundRequest.aspx"> Fund Request </a></i></div>
							    <div class="number"><asp:Label ID="lblRequestTotal" runat="server" Text="Label"></asp:Label> Encoded</div>
                                 <br />
                                 <br />
							    <span class="label label-danger"><i class="fa fa-exclamation">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblRequestPending" runat="server" Text="Label"></asp:Label></i> </span>
                                 <br />
                                 <br />
                                <span class="label label-info"><i class="fa fa-pencil-square-o">&nbsp;&nbsp;<asp:Label ID="lblRequestConfirmed" runat="server" Text="Label"></asp:Label></i> </span>
                                 <br />
                                 <br />
                                <span class="label label-info"><i class="fa fa-cogs">&nbsp;<asp:Label ID="lblRequestProcessed" runat="server" Text="Label"></asp:Label></i> </span>
                                 <br />
                                 <br />
                                <span class="label label-success"><i class="fa fa-check-square-o">&nbsp;<asp:Label ID="lblRequestAcknowledge" runat="server" Text="Label"></asp:Label></i> </span>
                                 <br />
                                 <br />
                              <span class="label label-success"><i class="fa fa-times">&nbsp;&nbsp;<asp:Label ID="lblRequestCancel" runat="server" Text="Label"></asp:Label></i> </span>
                               <br />
                                 <br />
                                 <%--<span class="label label-info"><i class="fa fa-map-marker"></i><asp:Label ID="lblRequestCancelled" runat="server" Text="Label"></asp:Label> Cancelled</span>--%>
							
                        </div>
					</div>
			</div>


                <script>$("#lblRequestPending").click(function () { });
                </script>
			<div class="clearfix"></div>
            
            <div id="wrapper2">
            <ul class="nav nav-tabs">
                
								<li class="active"><a href="#tab_1_2" data-toggle="tab">Fund Movement</a></li>
								<li><a href="#tab_1_3" data-toggle="tab">Others</a></li>
							</ul>
							
								<div class="tab-pane" id="tab_1_2">
									  <div class="table-scrollable" style="border:none">
                                          
                                        <div id="upperMenu">
                                            <span>Area </span>&nbsp;<asp:DropDownList runat="server" ID="cboArea" AutoPostBack="false" Width="126px"></asp:DropDownList>
                                            &nbsp;
                                            <span>Unit </span>&nbsp;<asp:DropDownList runat="server" ID="cboUnit" AutoPostBack="false" Width="100px">
                                            <asp:ListItem Selected="True" Value="0">&lt;All Unit&gt;</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;
                                            <span>Month </span>&nbsp;<asp:DropDownList runat="server" ID="cboDateFrom" AutoPostBack="false" Width="92px"></asp:DropDownList>
                                        
                                             &nbsp;
                                            <span>Week </span>&nbsp;<asp:DropDownList runat="server" ID="cboWeek" AutoPostBack="false" Width="76px"></asp:DropDownList>
                                            &nbsp;
                                            &nbsp;
                                            <asp:Button Text="View" runat="server" OnClientClick="return false" ID="btnView"></asp:button>
                                          </div>
                                          <div id="divTblMovement" style="visibility:visible">
                                         <asp:Table ID="tblFundMovement" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" CaptionAlign="Right" >
                                  
                                               <asp:TableRow ID="TableRow2" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                  <asp:TableHeaderCell Width="100"><div style="text-align:center;">Week</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100"><div style="text-align:center;">Projection</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="50"><div style="text-align:center;">Projection Type</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100"><div style="text-align:center;">Actual Amount</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100"><div style="text-align:center;">Remaining</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="200"><div style="text-align:center;">Status</div></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100"><div style="text-align:center;">Remarks</div></asp:TableHeaderCell>
                                               </asp:TableRow>
                                        </asp:Table>
                                             
                                              </div>
                                          <div id="divTblFundMovementArea" style="visibility:hidden">
                                          <asp:Table ID="tblFundMovementArea" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                  <asp:TableHeaderCell Width="100" style="text-align:center;">Unit Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center;">Projection</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center;">Actual Amount</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center;">Remaining</asp:TableHeaderCell>           
                                               </asp:TableRow>
                                        </asp:Table>
                                              </div>
                                          
                                         <%-- <asp:Table ID="TableFundMovementHO" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow3" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                  <asp:TableHeaderCell Width="100">Unit Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100">Projection</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100">Actual Amount</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100">Remaining</asp:TableHeaderCell>           
                                               </asp:TableRow>
                                        </asp:Table>--%>
                                    </div>						</div>
								<div class="tab-pane" id="tab_1_3">
														</div>
							</div>                     
                                           </form>
            </div>
        
            

			<div class="clearfix"></div>
            
						
		<%--	<!-- STAT BLOCKS-->
			<div class="row">
            	<div class="col-md-3 col-sm-6">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 100px; height: 100px;"><canvas width="100" height="100"></canvas><input class="knobify" data-width="115" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="10" data-max="100" data-min="1" readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(135, 206, 235); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;"></div>
						</div>
						<div class="details">
							<div class="title">Projection<i class="fa fa-caret-up"></i></div>
							<div class="number"><asp:Label ID="lblProjection" runat="server" Text="Label"></asp:Label></div>
							<span class="label label-danger"><a href="CSFundProjApproval.aspx"><i class="fa fa-map-marker"></i><asp:Label ID="lblProjectionPending" runat="server" Text="Label"></asp:Label></a></span>
							<span class="label label-success"><i class="fa fa-briefcase"></i><asp:Label ID="lblProjectionAck" runat="server" Text="Label"></asp:Label></span>				</div>
					</div>
				</div>
                
				<div class="col-md-3 col-sm-6">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 100px; height: 100px;"><canvas width="100" height="100"></canvas><input class="knobify" data-width="115" data-fgcolor="#66EE66" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="20" data-max="100" data-min="1" readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(102, 238, 102); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;"></div>
						</div>
						<div class="details">
							<div class="title">Fund Transfer<i class="fa fa-caret-up"></i></div>
							<div class="number"><asp:Label ID="lblTransfer" runat="server" Text="Label">0</asp:Label></div>
							<span class="label label-danger"><i class="fa fa-map-marker"></i> 123</span>
							<span class="label label-success"><i class="fa fa-briefcase"></i> 39</span>					</div>
					</div>
				</div>
                
				<div class="col-md-3 col-sm-6" data-tablet="span6 fix-margin" data-desktop="span3">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 100px; height: 100px;"><canvas width="100" height="100"></canvas><input class="knobify" data-width="115" data-fgcolor="#e23e29" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="25" data-max="100" data-min="1" readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(226, 62, 41); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;"></div>
						</div>
						<div class="details">
							<div class="title">FundRequest<i class="fa fa-caret-down down"></i></div>
							<div class="number"><asp:Label ID="lblRequest" runat="server" Text="Label">0</asp:Label></div>
							<span class="label label-danger"><i class="fa fa-map-marker"></i> 123</span>
							<span class="label label-success"><i class="fa fa-briefcase"></i> 39</span>				</div>
					</div>
				</div>
		  </div>
			<!-- END OVERVIEW STATISTIC BLOCKS-->--%>
         
			<div class="clearfix"></div>
		</div>
		<!-- END PAGE -->

	<!-- END CONTAINER -->
	
    <!-- FOOTER -->
    <br />
    <br />
	<div class="footer">
		<div class="footer-inner" id="version">
			
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="fa fa-angle-up"></i>
			</span>
		</div>
	</div>
	<!-- END FOOTER -->
	
    
     
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<%--<script type="text/javascript" async="" src="jquery/dc.js"></script>--%>
	<script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="jquery/thickboxplug.js" type="text/javascript"></script>
	<script src="jquery/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>   
	<script src="jquery/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	<script src="jquery/bootstrap.min.js" type="text/javascript"></script>
	<script src="jquery/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="jquery/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.js" type="text/javascript"></script>  
	<script src="jquery/jquery.vmap.russia.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.world.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.europe.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.germany.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.usa.js" type="text/javascript"></script>
	<script src="jquery/jquery.vmap.sampledata.js" type="text/javascript"></script>  
	<script src="jquery/jquery.peity.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.knob.js" type="text/javascript"></script>
	<script src="jquery/jquery.flot.js" type="text/javascript"></script>
	<script src="jquery/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="jquery/moment.min.js" type="text/javascript"></script>
	<script src="jquery/daterangepicker.js" type="text/javascript"></script>     
	<script src="jquery/jquery.gritter.js" type="text/javascript"></script>
	<script src="jquery/fullcalendar.min.js" type="text/javascript"></script>
	<script src="jquery/jquery.easy-pie-chart.js" type="text/javascript"></script>
	<script src="jquery/jquery.sparkline.min.js" type="text/javascript"></script>  
	<script src="jquery/app(1).js" type="text/javascript"></script>
	<script src="jquery/index.js" type="text/javascript"></script>  
	<script src="jquery/tasks.js" type="text/javascript"></script>  
   
	<script type="text/javascript">
	    jQuery(document).ready(function () {
	        App.init();
	        Index.init();
	        Index.initJQVMAP();
	        Index.initCalendar();
	        Index.initCharts();
	        Index.initChat();
	        Index.initMiniCharts();
	        Index.initPeityElements();
	        Index.initKnowElements();
	        Index.initDashboardDaterange();
	        Tasks.initDashboardWidget();
	    });
	</script>

    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to save data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        function ConfirmUpdate() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to update data?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }

        window.onbeforeunload = function () {
            saveFormData();
            return null;
        }

        function saveFormData() {
            console.log('saved');
        }

    </script>
    <script type="text/javascript">
        function valthis(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /^[0-9.,]+$/;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault) theEvent.preventDefault();
            }
        }
        function checkNull(_this) {
            if (_this.value == "") {
                _this.value = "0";
            }
        }
    </script>
	
</body>
</html>
