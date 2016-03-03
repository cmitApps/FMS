<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassExpired.aspx.cs" EnableEventValidation="false" Inherits="ASPFundManagement.PassExpired" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Change Password</title>
    <link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320" />
    `
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link href="css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <link href="css/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="css/jqvmap.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" />
    <link href="css/style-conquer.css" rel="stylesheet" type="text/css" />
    <link href="css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="css/tasks.css" rel="stylesheet" type="text/css" />
    <link href="css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <!-- HEADER VALUES -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/form.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="#" />
     <link rel="shortcut icon" type="image/x-icon" href="images/favFMS.ico"/>
    <style type="text/css">
        /*#ui-datepicker-div {
            display: none;
        }*/

        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0,0,0,0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }

        .style1 {
            color: #80CFEF;
        }
    </style>
</head>
<!-- END HEAD -->

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
				
				<li class="devider">&nbsp;</li>
<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">					
  					   <span class="username"></span>
					   <i class="fa fa-angle-down"></i> </a>
					
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
 <div class="loginBox">
     <br />
       <legend style="margin-top:2%; font-style: italic; font-size: medium;">You must change your password to continue.</legend>
            <form id="Form1" runat="server" style="margin-left:10%">		
                        <asp:ScriptManager ID="ScriptManager1" runat="server"  EnablePageMethods="true" />
               
                <table><tbody><tr><td class="auto-style2"> <span>Username: </span></td><td class="auto-style1"> <span><asp:TextBox ID="txtUsername" runat="server" Width="163px"></asp:TextBox></span></td></tr>
                    <tr><td class="auto-style2">  <span>Old Password: </span> </td><td class="auto-style1"> <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password" Width="164px"></asp:TextBox></td></tr>
                    <tr><td class="auto-style2"><span>New Password: </span></td><td class="auto-style1">  <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" Width="162px"></asp:TextBox></td></tr>
                    <tr><td><span>Confirm Password: </span></td><td>  <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Width="157px"></asp:TextBox></td></tr>
                       <tr><td colspan="2" align="center"><div>
                       
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return false" />
                        <asp:Button ID="btnClose" runat="server" Text="Cancel" OnClientClick="return false" />
                        </div></td></tr></tbody></table>
               
                        
                       
                        <div>
                        
                        
                        </div> 
                     
                          
                           <%--<span>Unit -&gt;</span>--%>
                        
                   
                    
    
               	</form>
           </div>
	</div>
    
        <!-- FOOTER -->
        <div class="footer">
            <%--<div class="footer-inner">
                2014 Copyright | All Rights Reserved | CMIT Inc | CARD MRI
            </div>
            <div class="footer-tools">
                <span class="go-top">
                    <i class="fa fa-angle-up"></i>
                </span>
            </div>--%>
        </div>

        <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="jquery/datepicker.js" type="text/javascript"></script>
        <script src="jquery/ChangePass.js" type="text/javascript"></script>
        <script src="jquery/thickboxplug.js" type="text/javascript"></script>
</body>
</html>
