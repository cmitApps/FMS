<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="ASPFundManagement.UserManagement" %>


<!DOCTYPE html>

<html id="Html1" lang="en" class="no-js" runat="server"><!--<![endif]-->

<!-- BEGIN HEAD -->
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>User Management - Fund Management</title>
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" media="screen"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"> 
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
    <link href="css/smoothThemeUI.css" rel="Stylesheet" type="text/css">
	
	<link rel="shortcut icon" href="#">
    <script type="text/javascript" src="jquery/ajaxJson.js"></script>
    <script src="jquery/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="jquery/thickboxplug.js" type="text/javascript"></script>
    <script type ="text/javascript" src="jquery/UserManagement.js"></script>
  <script type ="text/javascript" src="jquery/datepicker.js"></script>
  
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
					&nbsp;<span class="username"></span><i class="fa fa-angle-down"></i></a><ul class="dropdown-menu">
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
					<h3 class="page-title">Utilities</h3>
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
            
			<form runat="server" id="form1">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True" EnableScriptGlobalization="True" />
                <div id="upperMenu">
                   

                    <ul class="nav nav-tabs">

								<li class="active"><a href="#tab_1_1" data-toggle="tab" id="tabUser">User Accounts</a></li>
								<li><a href="#tab_1_2" data-toggle="tab" id="tabStatus">Account Status</a></li>
                                <li><a href="#tab_1_3" data-toggle="tab" id="tabArea"> Area List</a></li>
                                <li><a href="#tab_1_4" data-toggle="tab" id="tabUnit"> Unit List</a></li>
                                <li><a href="#tab_1_5" data-toggle="tab" id="tabBank"> Bank List</a></li>
                                <li><a href="#tab_1_6" data-toggle="tab" id="tabDays"> Parameters</a></li>
                                <li><a href="#tab_1_7" data-toggle="tab" id="tabHoliday"> Holidays</a></li>
						        <li><a href="#tab_1_8" data-toggle="tab" id="tabRole"> Access Roles</a></li> 
                                <li><a href="#tab_1_9" data-toggle="tab" id="tabCebuanaService"> Cebuana Service Fee</a></li> 
                                
                                
                           	
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="tab_1_1">
                                     <asp:button ID="btnNew" Text="Create" OnClientClick="return false" runat="server"/>
                                     &nbsp;
                                    <asp:button ID="btnModify" Text="Modify" OnClientClick="return false" runat="server" />
                                    &nbsp;
                                      <asp:button ID="btnResetPass" Text="Reset Password" OnClientClick="return false" runat="server" />
                                    &nbsp;
                                     &nbsp;
                                      <asp:button ID="btnChangeExpiration" Text="Change Expiration" OnClientClick="return false" runat="server" />
                                    &nbsp;
                                    <br/>
                                    <br/>
                                    Search area: <asp:TextBox runat="server" ID="txtAreaSearch" Width="181px"></asp:TextBox>&nbsp;<img src="images/searchbutton.png" id="btnSearch" width="31" height="30" onclick=""/>
                                     <div class="table-scrollable" style="border:none">
									<asp:Table ID="tblUser" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">UserID</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Username</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="200" style="text-align:center">Full Name</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Role Code</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Role Description</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Area Code</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Area Name</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="100" style="text-align:center">Account Expiration</asp:TableHeaderCell>
                                                   
                                               </asp:TableRow>
                                        </asp:Table>								
                                        </div>
								</div>
								<div class="tab-pane" id="tab_1_2">
									 <asp:button ID="btnReset" Text="Unlock" OnClientClick="return false" runat="server" />
                                        &nbsp;
                                     <asp:button ID="btnDelete" Text="Delete" OnClientClick="return false" runat="server" />
                                         &nbsp;
                                     <asp:button ID="btnUndelete" Text="UnDelete" OnClientClick="return false" runat="server" />
                                       <br/>
                                    <br/>
                                     <div class="table-scrollable" style="border:none">
                                         Search Username: <asp:TextBox runat="server" ID="txtUserSearch" Width="181px"></asp:TextBox>&nbsp;<img src="images/searchbutton.png" id="btnSearch2" width="31" height="30" onclick=""/>
                                         <asp:Table ID="tblUserStats" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow2" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="30" style="text-align:center"></asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">UserID</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">UserName</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="50" style="text-align:center">RoleID</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="75" style="text-align:center">Attempt</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="75" style="text-align:center">Delete</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="150" style="text-align:center">Status</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="150" style="text-align:center">Password Change</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="150" style="text-align:center">Created</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="150" style="text-align:center">Time Locked</asp:TableHeaderCell>
                                               </asp:TableRow>
                                        </asp:Table>
                                         </div>
                                          
                                    </div>	

                                <div class="tab-pane" id="tab_1_3">
									 
                                        Area Name: <asp:TextBox ID="txtAreaName" runat="server"></asp:TextBox>
                                        Area Code: <asp:TextBox ID="txtAreaCode" runat="server" onkeypress="return valthis(event)"></asp:TextBox>
                                        ML Area Code: <asp:TextBox ID="txtMLControlA" runat="server"></asp:TextBox>
                                    <br/>
                                        <asp:Button ID="btnAddArea" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnModArea" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnDltArea" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnCancelA" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                        <br/>
                                     <br/>
                                     <div class="table-scrollable" style="border:none">
                                     <asp:Table ID="tblArea" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Sequence No</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Area Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="159" style="text-align:center">Area Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">ML Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Deleted</asp:TableHeaderCell>
                                                   
                                               </asp:TableRow>
                                        </asp:Table>
                                        </div>
                                    </div>	

                                <div class="tab-pane" id="tab_1_4">
									 

                                        Area : <asp:DropDownList ID="cboArea" runat="server"></asp:DropDownList>
                                        Unit Name : <asp:TextBox ID="txtUnitName" runat="server"></asp:TextBox>
                                        Unit Code : <asp:TextBox ID="txtUnitCode" runat="server" onkeypress="return valthis(event)"></asp:TextBox>
                                        ML Unit Code : <asp:TextBox ID="txtMLControl" runat="server"></asp:TextBox>
                                    <br/>
                                         <asp:Button ID="btnAddUnit" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                          <asp:Button ID="btnModUnit" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnDltUnit" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnCancelU" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                    <br/>
                                     <br/>
                                     <div class="table-scrollable" style="border:none">
                                        <asp:Table ID="tblUnit" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow3" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Sequence No</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Area Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Area Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Unit Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Unit Name</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">ML Code</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Deleted</asp:TableHeaderCell>
                                        
                                              </asp:TableRow>
                                        </asp:Table>
                                         </div>
                                    </div>	
                                		
                                <div class="tab-pane" id="tab_1_5">
									 

                                        Area : <asp:DropDownList ID="cboArea2" runat="server"></asp:DropDownList>
                                        Unit : <asp:DropDownList ID="cboUnit" runat="server"></asp:DropDownList>
                                    <br/>
                                        
                                        Bank Code : <asp:TextBox ID="txtBankCode" runat="server" onkeypress="return valthis(event)" ReadOnly="true"></asp:TextBox>
                                        Bank Name : <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
                                        Account Number : <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
                                    <br/>
                                         <asp:Button ID="btnAddBank" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                          <asp:Button ID="btnModBank" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnDltBank" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnCancelB" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                    <br/>
                                     <br/>
                                     <div class="table-scrollable" style="border:none">
                                        <asp:Table ID="tblBank" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow4" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Bank Code</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="150" style="text-align:center">Bank Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="150" style="text-align:center">Account Number</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Area Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Area Name</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Unit Code</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="100" style="text-align:center">Unit Name</asp:TableHeaderCell>
                                                    
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Deleted</asp:TableHeaderCell>
                                        
                                              </asp:TableRow>
                                        </asp:Table>
                                         </div>
                                    </div>	

								   <div class="tab-pane" id="tab_1_6">
									 
                                        <table>
                                            <tr>
                                                <td style="text-align:right;">Minimum Days of Projection Utilization: </td>
                                                <td><asp:TextBox ID="txtDaysProj" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Default Password: </td>
                                                <td><asp:TextBox ID="txtDefaultPass" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                             <tr>
                                                <td style="text-align:right;">Minimum Days of Fund Utilization: </td>
                                                <td><asp:TextBox ID="txtDays" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Default Max Amount for Fund Request: </td>
                                                <td><asp:TextBox ID="txtMaxAmount" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                             <tr>
                                                <td style="text-align:right;">Login Maximum Attempt: </td>
                                                <td><asp:TextBox ID="txtAttempt" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Default Minimum Amount for Fund Request: </td>
                                                <td><asp:TextBox ID="txtMinAmount" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                             <tr>
                                                <td style="text-align:right;">Mlhuillier Maximum Amount per Transaction: </td>
                                                <td><asp:TextBox ID="txtAmount" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Default Idle Time : </td>
                                                <td><asp:TextBox ID="txtIdleTime" runat="server" Width="150px"></asp:TextBox></td>
                                            </tr>
                                             <tr>
                                                <td style="text-align:right;">Cebuana Lhuillier Maximum Amount per Transaction: </td>
                                                <td><asp:TextBox ID="txtCAmount" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Fund Transfer Cut-Off : </td>
                                                <td><input type="time" ID="txtEndTime" style="height:35px; width:150px;" ></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:right;">Cebuana Lhuillier Tax Witheld: </td>
                                                <td><asp:TextBox ID="txtCTWitheld" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                                <td style="text-align:right;">Palawan Pawnshop Maximum Amount per Transaction:</td>
                                                <td><asp:TextBox ID="txtPAmount" runat="server" onkeypress="return valthis(event)"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    <br/>
                                     
                                       <asp:Button ID="btnModPara" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                       <asp:Button ID="btnCancelP" runat="server" Text="Cancel" OnClientClick="return false"></asp:Button>
                                      
                                    <br/>
                                     <br/>
                                        
                                    </div>	

								 <div class="tab-pane" id="tab_1_7">
									 

                                   
                                       <!-- ID : <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        Unit : <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>-->
                                        Holiday Name : <asp:TextBox ID="txtHoliName" runat="server" Width="170px"></asp:TextBox>
                                        Date : <asp:TextBox ID="txtHoliDate" runat="server" Width="100px"></asp:TextBox>
                                        Holiday ID : <asp:TextBox ID="txtHoliID" runat="server"  onkeypress="return valthis(event)"></asp:TextBox>
                                       
                                    <br/>
                                         <asp:Button ID="btnAddHoli" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                          <asp:Button ID="btnModHoli" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnDltHoli" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnCancelH" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                    <br/>
                                     <br/>
                                        <asp:Table ID="tblHoliday" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow5" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="100" style="text-align:center">Holiday ID</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="180" style="text-align:center">Holiday Name</asp:TableHeaderCell>
                                                  <asp:TableHeaderCell Width="150" style="text-align:center">Date</asp:TableHeaderCell>
                                               <%--    <asp:TableHeaderCell Width="150" style="text-align:center">Deleted</asp:TableHeaderCell>--%>
                                                 
                                              
                                        
                                              </asp:TableRow>
                                        </asp:Table>
                                        
                                    </div>
                                
                                
                                 <div class="tab-pane" id="tab_1_8">
                                        Role Description : <asp:TextBox ID="txtRoleDesc" runat="server" Width="170px"></asp:TextBox>
                                        Role ID : <asp:TextBox ID="txtRoleID" runat="server"  onkeypress="return valthis(event)"></asp:TextBox>
                                       
                                    <br/>
                                         <asp:Button ID="btnAddRole" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                          <asp:Button ID="btnModRole" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                        <asp:Button ID="btnDeleteRole" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnCancelRole" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                    <br/>
                                     <br/>
                                       <div class="table-scrollable" style="border:none">
                                        <asp:Table ID="tblRoles" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow6" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="50" style="text-align:center">Role ID</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="180" style="text-align:center">Role Desc</asp:TableHeaderCell>
                                               <%--    <asp:TableHeaderCell Width="150" style="text-align:center">Deleted</asp:TableHeaderCell>--%>
                                              
                                              </asp:TableRow>
                                        </asp:Table>
                                           </div>


                                     <br/>
                                       <div class="table-scrollable" style="border:none">
                                        <asp:Table ID="tblAccessRoles" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow7" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="50" style="text-align:center"></asp:TableHeaderCell>
                                                    <asp:TableHeaderCell Width="180" style="text-align:center">Access Desc</asp:TableHeaderCell>
                                               <%--    <asp:TableHeaderCell Width="150" style="text-align:center">Deleted</asp:TableHeaderCell>--%>
                                              
                                              </asp:TableRow>
                                        </asp:Table>
                                           </div>
                                     <div id="AccessList"></div>
                                     <div id="UtilList">  </div>
                                        
                                    </div>	

                                 <div class="tab-pane" id="tab_1_9">
                                        Amount : <asp:TextBox ID="txtServiceAmount" runat="server" Width="170px" onkeypress="return allowOnlyNumber(event)"></asp:TextBox>
                                        Service Fee : <asp:TextBox ID="txtServiceFee" runat="server" Width="170px" onkeypress="return allowOnlyNumber(event)"></asp:TextBox>
                                        Service Fee ID : <asp:TextBox ID="txtServiceFeeID" runat="server"  onkeypress="return allowOnlyNumber(event)"></asp:TextBox>
                                       
                                    <br/>
                                         <asp:Button ID="btnAddServiceFee" runat="server" Text="Add" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnModifyServiceFee" runat="server" Text="Modify" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnDeleteServiceFee" runat="server" Text="Delete" OnClientClick="return false"></asp:Button>
                                         <asp:Button ID="btnCancelServiceFee" runat="server" Text="Cancel"  OnClientClick="return false"></asp:Button>
                                    <br/>
                                     <br/>
                                       <div class="table-scrollable" style="border:none">
                                        <asp:Table ID="tblService" Runat="server" BorderStyle="Solid"  AutoPostBack="False" AllowMutiRowSelection="true" GridLines="Both" >
                                  
                                               <asp:TableRow ID="TableRow8" Runat="server" Font-Bold="True"
                                                ForeColor="Black" BackColor="Silver" AutoPostBack="False">
                                                   <asp:TableHeaderCell Width="50" style="text-align:center">Service Fee ID</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="180" style="text-align:center">Amount</asp:TableHeaderCell>
                                                   <asp:TableHeaderCell Width="180" style="text-align:center">Service Fee</asp:TableHeaderCell>
                                                   <%--<asp:TableHeaderCell Width="150" style="text-align:center">Deleted</asp:TableHeaderCell>--%>
                                              
                                              </asp:TableRow>
                                        </asp:Table>
                                           </div>
                                     <br/>
                                     <div id="Div2"></div>
                                     <div id="Div3">  </div>
                                        
                                    </div>	




							</div>        
                           
							</div>        
                    
                  
                
            </form>
            </div>
			<div class="clearfix"></div>
		</div>
		<!-- END PAGE -->

	<!-- END CONTAINER -->
	
    <!-- FOOTER -->
	<div class="footer">
		<div class="footer-inner">
			2014 Copyright | All Rights Reserved | CMIT Inc | CARD MRI
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
    <script type="text/javascript">
        function valthis(evt) {
            var theEvent = evt || window.event;
            var key = theEvent.keyCode || theEvent.which;
            key = String.fromCharCode(key);
            var regex = /^[0-9]+$/;
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

        function allowOnlyNumber(evt) {


            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode != 46 && charCode > 31
              && (charCode < 48 || charCode > 57))
               return false;
            return true;

        }

    </script>
	
</body>
</html>
