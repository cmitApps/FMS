<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CashFundRequest.aspx.cs" Inherits="ASPFundManagement.CashFundRequest" %>

<!DOCTYPE html>

<html id="Html" lang="en" class="no-js" runat="server"><!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
    <style> TableHeader {text-align:center;} </style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Fund Management - Request</title>
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />
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
	<link href="css/jqvmap.css" rel="stylesheet" type="text/css" />
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
 
    
  
    <script type="text/javascript">
  
  

    </script>
<style type="text/css">
.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
</style>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed" style="">

	<!-- BEGIN HEADER -->   
	<div class="header navbar navbar-inverse navbar-fixed-top" id="header1">
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
				       <span class="username"></span>
					   <i class="fa fa-angle-down"></i>					</a>
					<ul class="dropdown-menu">
						<li><a href="#" id="btnAccount"><i class="fa fa-user"></i> My Account</a>						</li>
  						
						
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
					<h3 class="page-title">Fund Request</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="Dashboard.aspx">Home</a> 
							<i class="fa fa-angle-right"></i>						</li>
						
					</ul>
					<!-- END PAGE TITLE / SLOGAN-->
				</div>
		  </div>
			<!-- END PAGE HEADER-->
                                                    <form id="Form1" runat="server">
               
             
                <asp:ScriptManager ID="ScriptManager1" runat="server"  EnablePageMethods="true" />

            <div id="upperMenu" style="visibility:hidden">
                <asp:Button ID ="btnNew" runat="server" Text="New" OnClientClick="SetGlobalCounter(); clickForThickBox('New Fund Request', 1); return false;"/>
                <asp:Button ID ="btnModify" runat="server" Text="Modify" OnClientClick="return false"/>
                 <span><asp:Button ID="btnCancelRequest" runat="server" Text="Cancel Request" OnClientClick="SetGlobalCounter(); clickForThickBox('Cancel Fund Request', 8);  return false;"/></span>
               </div>
                         <br />
                                                    

                           <span>Status:</span>
                           <span> <asp:DropDownList ID="cboStatus" runat="server">
                           <%-- <asp:ListItem Value="0">&lt;Select Status&gt;</asp:ListItem>
                            <asp:ListItem Value="1">Confirm</asp:ListItem>
                            <asp:ListItem Value="2">Pending</asp:ListItem>--%>
                            </asp:DropDownList>
                            </span>
                            <span>Mode of Settlement:</span>
                            <span> <asp:DropDownList ID="cboMode" runat="server"/></span>
                            <span id="DivBank">Bank:
                            <span> <asp:DropDownList ID="CboBank" runat="server">
                           <%-- <asp:ListItem>&lt;Select Mode&gt;</asp:ListItem>
                            <asp:ListItem>Bank</asp:ListItem>
                            <asp:ListItem>Mlhullier</asp:ListItem>--%>
                            </asp:DropDownList></span></span>
                            <span>Date:</span>
                            <span>
                            <asp:TextBox ID="datePicker" runat="server" Text=""></asp:TextBox> 
                            </span>
                            <span> <asp:Button ID="btnView" runat="server" Text="View" OnClientClick="return false"/></span>
                            <br />
                                <b>Legend:</b>
                                                        <br>
                               <img src="images/90EE90.jpg" width="25" height="25"> Fund Requests above P200,000.00<br>
                               <img src ="images/ffb6c1.png"  width="25" height="25">  Fund Requests above Fund Projection <br> 
                            <a id="btnAll" href="#" style="visibility:hidden">Select All</a>&nbsp;&nbsp;&nbsp;<a id="btnAllDeselect" href="#" style="visibility:hidden">Deselect</a> 
            
                            <div class="table-scrollable" id="divRequest" style="border:none">
                                 <asp:Table ID="tblRequest" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" Width="1600px" >
                                  
                                       <asp:TableRow ID="TableRow2" Runat="server" Font-Bold="True"
                                        ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                           <asp:TableHeaderCell Width="50" style="text-align:center">ID</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="150" style="text-align:center">Area-Unit</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Date Requested</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Amount</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="50" style="text-align:center">Transfer Type</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="150" style="text-align:center">Receiver</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="150" style="text-align:center">Mobile Number</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="50" style="text-align:center">Transfer Mode</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Bank Name/Branch</asp:TableHeaderCell>
                                           <asp:TableHeaderCell  Width="175" style="text-align:center">Account/Control Number</asp:TableHeaderCell>
                                            <asp:TableHeaderCell  Width="100" style="text-align:center">Date<br/>  Needed</asp:TableHeaderCell>
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Date<br/>  Transferred</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Status</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="50" style="text-align:center">OR Number</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Remarks</asp:TableHeaderCell>  
                                       </asp:TableRow>
                                </asp:Table>
                            </div>

                 <div class="table-scrollable" id="divRequestBank" style="visibility:collapse;border:none">
                     <asp:Table ID="tblRequestBank" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" Width="1600px" >
                                  
                                       <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
                                        ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                           <asp:TableHeaderCell Width="50"></asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="50" style="text-align:center">ID</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="120" style="text-align:center">Branch</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="100" style="text-align:center">Requested</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Amount</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="75" style="text-align:center">Transfer Type</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Bank Name</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="150" style="text-align:center">Account/ControlNumber</asp:TableHeaderCell>
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Date<br/> Needed</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Date<br/> Transferred</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Status</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">OR Number</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Remarks</asp:TableHeaderCell>  
                                           
                                       </asp:TableRow>
                                </asp:Table>

                                
                 </div>
                 <div class="table-scrollable" id="divRequestMlhullier" style="visibility:collapse;border:none">
                     <asp:Table ID="tblRequestMlhullier" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" Width="1600px" >
                                  
                                       <asp:TableRow ID="TableRow3" Runat="server" Font-Bold="True"
                                        ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                           <asp:TableHeaderCell Width="50"></asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="50" style="text-align:center">ID</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="150" style="text-align:center">Branch</asp:TableHeaderCell>
                                          <asp:TableHeaderCell Width="150" style="text-align:center">Requested</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="100" style="text-align:center">Amount</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="75" style="text-align:center">Transfer Type</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="150" style="text-align:center">Receiver</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="150" style="text-align:center">Mobile Number</asp:TableHeaderCell>
                                           <asp:TableHeaderCell Width="70" style="text-align:center">Transfer Mode</asp:TableHeaderCell>
                                           <asp:TableHeaderCell  Width="175" style="text-align:center">Account/Control Number</asp:TableHeaderCell> 
                                           <asp:TableHeaderCell  Width="150" style="text-align:center">Date<br/> Needed</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="150" style="text-align:center">Date<br/> Transferred</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Status</asp:TableHeaderCell>  
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">OR Number</asp:TableHeaderCell>
                                           <asp:TableHeaderCell  Width="100" style="text-align:center">Remarks</asp:TableHeaderCell>    
                                            
                                       </asp:TableRow>
                                </asp:Table>
                     
                 </div>
            Page:<asp:DropDownList ID="cboPageNo" runat="server"></asp:DropDownList> of <span id="lblPageNo"></span>
                                                        &nbsp;&nbsp;&nbsp;
            Item Count:<asp:DropDownList ID="cboItemCount" runat="server"></asp:DropDownList> 
			<div class="clearfix" id="lowerMenu" style="visibility:hidden">
               <span><asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClientClick="return false"/></span>
               <span><asp:Button ID="btnProcessed" runat="server" Text="Processed" OnClientClick="return false"/></span> 
               <span><asp:Button ID="btnAcknowledge" runat="server" Text="Acknowledge" OnClientClick="SetGlobalCounter(); clickForThickBox('Acknowledge Request', 3); return false;"/></span>
              
            </div>
            
			
		</form>		   
    
            
			
            </div>
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
    <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript"  src="jquery/datepicker.js"></script>
    <script src="jquery/thickboxplug.js" type="text/javascript"></script>
    <script type="text/javascript" src="jquery/CSFundRequest.js"></script>

	<%--<script type="text/javascript" async="" src="jquery/dc.js"></script>--%>
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

      

    </script>
   <%-- <script type="text/javascript">
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
    </script>--%>


</body>
</html>
