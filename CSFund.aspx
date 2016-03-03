<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSFund.aspx.cs" Inherits="ASPFundManagement.CSFund" %>

<!-- code section -->

<!-- Layout -->
<!DOCTYPE html>

<html lang="en" class="no-js"><!--<![endif]-->

<!-- BEGIN HEAD -->
<head>

    <link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Fund Projection</title>
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
	<link href="css/default.css" rel="stylesheet" type="text/css" id="style_color">
    <!-- HEADER VALUES -->
	<link href="css/custom.css" rel="stylesheet" type="text/css">
    <link href="css/form.css" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="#">


    
<style type="text/css">
.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
    #upperMenu {
        height: 19px;
    }
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
			<img src="images/menu-toggler.png" alt="">			</a> 
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
<ul class="nav navbar-nav pull-right" style="margin-top:25px">
				<li class="dropdown user" style="width:120px">
					<a class="dropdown-toggle">					
     					   <div style="text-align:right"><span class="username" id="systemDate"></span></div>
					   </a>
				</li>
              
                
				<li class="devider">&nbsp;</li>
<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					
                    
					<span class="username" id="dispName" runat="server"></span>
					<i class="fa fa-angle-down"></i>					</a>
					<ul class="dropdown-menu">
						<li><a href="#" id="btnAccount"><i class="fa fa-user"></i> Modify Account</a>						</li>
						
						
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
					<h3 class="page-title">Fund Projection</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>						</li>
						<li><a href="Dashboard.aspx">Home</a>
                        <i class="fa fa-angle-right"></i>		
						</li>
					</ul>
					<!-- END PAGE TITLE / SLOGAN-->
				</div>
		  </div>
			<!-- END PAGE HEADER-->
            <div id="wrapper2">
                                 <legend id ="lblHeader"></legend>
                                    <form id="Form1" runat="server" >
							         <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
                                        <div id="upperMenu" style="visibility:hidden">
                                       <span><asp:Button ID="btnNew" runat="server" Text="New" OnClientClick="return false"/></span>
                                       <span><asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return false"/></span>
                                       <span><asp:Button ID="btnModify" runat="server" Text="Modify" OnClientClick="return false"/></span>
                                        <span><asp:Button ID="btnCancel" runat="server" Text="Cancel"  OnClientClick="return false"/></span>
                                            </div>
                                          <br/>
                                        <br/>
                                            <div>
                                                <span>Area:</span>
                                                <span><asp:DropDownList ID="cboArea" runat="server"></asp:DropDownList> </span>  

                                                 <span>Unit:</span>
                                                 <span><asp:DropDownList ID="cboUnit" runat="server"></asp:DropDownList></span>
                                            </div>
                                             
                                          
                                     
                                            <div>   
                                    
                                                <br /> 
                                                 <span>Date:</span>
                                                 <span><asp:DropDownList ID="cboDateFrom" runat="server"></asp:DropDownList></span>      
                                                 
                                                 <span>To:</span>  
                                                 <span> <asp:DropDownList ID="cboDateTo" runat="server" Enabled="false"></asp:DropDownList></span> 

                                            </div>
         
                                 
                                            <div id="divTxtBox">
                                                
                                                <br /> 
                                                <span>Week 1:</span>
                                                <span><asp:TextBox ID="txtWeek1" MaxLength="8" runat="server" Enabled="false" Text="0" onkeypress="return valthis(event)" ></asp:TextBox></span>
                                                <span>Week 2:</span>
                                                <span><asp:TextBox ID="txtWeek2" MaxLength="8" runat="server" Enabled="false" Text="0" onkeypress="return valthis(event)" ></asp:TextBox></span>
                                                <span>Week 3:</span>
                                                <span><asp:TextBox ID="txtWeek3" MaxLength="8" runat="server" Enabled="false" Text="0" onkeypress="return valthis(event)" ></asp:TextBox></span>
                                                 <span>Week 4:</span>
                                                <span><asp:TextBox ID="txtWeek4" MaxLength="8" runat="server" Enabled="false" Text="0" onkeypress="return valthis(event)" ></asp:TextBox></span>
                                                 <span>Week 5:</span>
                                                <span><asp:TextBox ID="txtWeek5" MaxLength="8" runat="server" Enabled="false" Text="0" onkeypress="return valthis(event)" ></asp:TextBox></span>
                                            </div>
                               
                                        
                                        <br />
                                        <span id="lblRemark" style="visibility:hidden">Remarks</span>
                                        <br/>
                                        <span id="spanRemark" style="visibility:hidden">
                                       <asp:TextBox TextMode="MultiLine" ID="txtAreaRemarks" runat="server"></asp:TextBox>
                                            </span>
                                           <br />
                            <div class="table-scrollable" style="border:none">
                                 <asp:Table ID="tblProjection" CssClass="viewer" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                       <asp:TableRow ID="TableRow2" Runat="server" Font-Bold="True"
                                        ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Unit Name</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Week 1</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Week 2</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Week 3</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Week 4</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Week 5</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Total</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Status</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Remarks</asp:TableHeaderCell>
                                           
                                       </asp:TableRow>
                                </asp:Table>
                            </div>
                                        <br/>
                                        <br/>
                                        
                            <div class="table-scrollable" id="divApproval" style="border:none;visibility:hidden">
                                 <span>For Approval by HO</span>
                                </br/>

                                
                                <a id="btnAll" href="#">Select All</a>&nbsp;/&nbsp;<a id="btnAllDeselect" href="#">Deselect All</a> 
                                 <asp:Table ID="tblApproval" Runat="server" BorderStyle="Solid" AllowMutiRowSelection="true"  AutoPostBack="False" GridLines="Both" >
                                  
                                       <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
                                        ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Projection ID</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Select</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Area</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Unit</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Amount</asp:TableHeaderCell>
                                           <%--<asp:TableHeaderCell Width="100">ProjectionDate</asp:TableHeaderCell>--%>
                                       </asp:TableRow>
                                      

                                </asp:Table>
                               
                                    
                         </div>
                                         </form>   
            <div class="clearfix"></div>
            

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
	</div>
	<!-- END CONTAINER -->
	
    <!-- FOOTER -->
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
    
   <script type="text/javascript" src="jquery/ajaxJson.js"></script>
   <script type ="text/javascript" src="jquery/jquery-1.10.2.min.js"></script>
   <script type="text/javascript" src="jquery/CSFundProjection.js"></script>
    <script src="jquery/thickboxplug.js" type="text/javascript"></script>
   
<%--     <script type="text/javascript" src="jquery/jquery-session.js"></script>--%>
	<%--<script type="text/javascript" async="" src="jquery/dc.js"></script>--%>
	<script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
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
        function Callback_Function(result, context) {
            alert('WebMethod was called');
        }
        </script>
</body>
</html>