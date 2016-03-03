<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSFundLogin.aspx.cs" Inherits="ASPFundManagement.CSFundLogin" %>


<!DOCTYPE html>

<html id="Html" lang="en" class="no-js" runat="server">
<head>
    <meta charset="utf-8">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>Fund Management</title>
    <link href="css/notificationthickbox.css" rel="stylesheet" type="text/css" media="screen"/> 
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

    <%--<link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />--%>
    
    
    <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="jquery/thickboxplug.js" type="text/javascript"></script>
    <script src="jquery/datepicker.js" type="text/javascript"></script>
    <script type ="text/javascript" src="jquery/jquery-session.js"></script>
      <%-- --%>
    <script type="text/javascript">


    
        //$(document).load(function () {

          

        //    PageMethods.checkSession(checkSuccess, checkFailed);

        //    function checkSuccess(data) {
        //        if (data == 1) {
        //            window.location.replace("csfund.aspx");
        //        }

        //        else {

        //            alert("Please log your credetials");

        //        }

        //    }

        //    function checkFailed() {

        //        alert("Failed to connect on server.")
        //    }


        //});
        var sysDate = "";
        
        $(document).ready(function () {
            //window.onbeforeunload = closeit;


            //function closeit() {
            //    var closeEvent = false;
            //    alert("closed/unloaded")
            //    if (event.clientY < 0)
            //        closeEvent = true;


            //    if ((closeEvent)) {
            //        //YOU CAN SET YOUR FLAG TO FALSE HERE...  .         }
            //    }
            //}
            //handleWindowClose();
            //function handleWindowClose() {
            //    if (event.altKey == true && event.keyCode == 0)
            //    {
            //        PageMethods.logInUser($("#txtUser").val(), $("#txtPass").val(), LoginSuccess, LoginFailed);
            //    }
            //    if ((window.event.clientX < 0) || (window.event.clientY < 0)) {
            //        //event.returnValue = "If you have made any changes to the fields without clicking the Save button, your changes will be lost.";

            //        PageMethods.logInUser($("#txtUser").val(), $("#txtPass").val(), LoginSuccess, LoginFailed);
            //    }
            //}
            GetServerTime();

            function GetServerTime() {

                PageMethods.getSysDate(systemDateLoad);

                function systemDateLoad(date) {

                    sysDate = date;
                }

            }

            window.setInterval(function () {

                GetServerTime();

            }, 800);

            var linkAddress = "";

            PageMethods.getVersion(loadVersion);

            function loadVersion(data) {

                $("#version").append("2014 Copyright | All Rights Reserved | CMIT Inc | CARD MRI | Fund Management System Version " + data)
            }

            PageMethods.getLastPage(loadLink);

            function loadLink(link) {
                
                if (link != null) {
                    $("#divAlert").append("Please log in.");
                    linkAddress = link;
                }

                else {


                }

            }



            var attempt = 0;
            
            $("#btnLogin").click(function () {
                $("#divAlert").empty();
                if ($("#txtUser").val() != "") {
                   
                    //$("#divAlert").css("text-emphasis-color", "green");
                    $("#divAlert").append("<font color='green'>Please wait...</font><br/><img src='images/loading.gif'/>");
		       //alert("move1"+" "+$("#txtUser").val()+" "+ $("#txtPass").val());
                    PageMethods.logInUser($("#txtUser").val(), $("#txtPass").val(), LoginSuccess);
                }

                else {

                    $("#divAlert").append("Please Input Credentials")

                }

                function LoginSuccess(response) { 

                    $("#divAlert").empty();
                    
                        if (response == 5||response ==10) {
                     
                            $("#txtUser").attr("disabled", true);
                            $("#txtPass").attr("disabled", true);
                            $("#btnLogin").attr("disabled", true);

                            var TransNotif = false;

                            PageMethods.CheckSession(sessionGet, sessionNotGet);

                            function sessionGet(data) {
                                if (data == 1) {
                                    PageMethods.setUserInfo(userInfoLoaded, userInfoFailed);

                                    function userInfoLoaded(data2) {


                                        $.each(data2, function (index, item) {

                                            TransNotif = item.TransferNotification;


                                        });

                                        if (TransNotif == true) {
                                            tb_show("Fund Transfers encoded today, " + sysDate, "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                                        }
                                        else {

                                            if (linkAddress == 1) {

                                                window.location.replace("csfund.aspx");
                                                //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                                            }

                                            else if (linkAddress == 2) {
                                                window.location.replace("cashfundrequest.aspx");
                                                //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                                            }

                                            else if (linkAddress == 3) {

                                                window.location.replace("csfundtransfer.aspx");
                                                //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                                            }

                                            else if (linkAddress == 4) {

                                                window.location.replace("usermanagement.aspx");
                                                //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);

                                            }

                                            else {

                                               window.location.replace("dashboard.aspx");
                                               //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                                            }

                                        }

                                    }

                                    function userInfoFailed() {

                                        alert("failed to load user info from server");

                                    }
                                }
                                else {
                                    //do nothing
                                }
                            }

                            function sessionNotGet() {

                                alert("Cannot connect to server");
                            }

                                                   
                            //if (linkAddress == 1) {

                            //    window.location.replace("csfund.aspx");
                            //    //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                            //}

                            //else if (linkAddress == 2) {
                            //    window.location.replace("cashfundrequest.aspx");
                            //    //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                            //}

                            //else if (linkAddress == 3) {

                            //    window.location.replace("csfundtransfer.aspx");
                            //    //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                            //}

                            //else if (linkAddress == 4) {
                                
                            //    window.location.replace("usermanagement.aspx");
                            //    //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);

                            //}

                            //else {
                                  
                            //   window.location.replace("dashboard.aspx");
                            //   //tb_show("Cash Fund Transfer for the Day", "CSFundTransferNotification.aspx?TB_iframe=true&width=735&height=400", null);
                            //}
                        }


                        else if (response == 4) {

                            $("#divAlert").append("Someone is still logged in this account");

                        }
                        else if(response==3){

                            $("#divAlert").append("Invalid Credentials")
                              
                            }

                        else if(response==2){

                            $("#divAlert").append("Account Locked");
                                
                            
                        }

                        else if (response == 1) {

                            $("#divAlert").append("Account Deleted");
                        }

                        else if (response == 11) {

                            $("#divAlert").append("Account Access Role Has Been Deleted");
                        }


                        else if(response == "6"||response == "8"){
                        

                            window.location.replace("passexpired.aspx");

                        }

                        else if (response == "7") {


                            alert("Account is already expired.");

                        }

                        else if (response == "0") {

                            $("#divAlert").append("Invalid Credentials")
                        }

                        //else if(response == 10) {
                          

                        //    $("#divAlert").append("Account is now accesible, please relog to continue")
                        //    //if (linkAddress == 1) {
                        //    //    window.location.replace("csfund.aspx");
                        //    //}
                        //    //else if (linkAddress == 2) {
                        //    //    window.location.replace("cashfundrequest.aspx");

                        //    //}
                        //    //else if (linkAddress == 3) {

                        //    //    window.location.replace("csfundtransfer.aspx");

                        //    //}

                        //    //else if (linkAddress == 4) {

                        //    //    window.location.replace("usermanagement.aspx");

                        //    //}

                        //    //else {

                        //    //    window.location.replace("dashboard.aspx");

                        //    //}
                        

                        //}
                        
                        else {

                            $("#divAlert").append("Account is unlock, please relog to continue.")

                        }

                }

                function LoginFailed(exception) {
			
 			var errorMessage = exception;
                   alert("Failed to connect to server1");
                   alert(errorMessage.val());
                   
                    $("#divAlert").empty();
                }


            });

        });
        </script>

	
    
<%--<style type="text/css">
     #ui-datepicker-div { display: none; } 
.ui-datepicker-next,.ui-datepicker-prev{display:none;}
.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
</style>--%>
</head>


<!-- END HEAD -->

<!-- BEGIN BODY -->
<link rel="shortcut icon" type="image/x-icon" href="images/favFMS.ico"/>
<body class="page-header-fixed" style="" onbeforeunload="handleWindowClose()">
    <div class="header navbar navbar-inverse navbar-fixed-top" >
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="header-inner">
			<!-- BEGIN LOGO -->  

			<a class="navbar-brand" href="csfundlogin.aspx" style="margin-top:0px; width:340px">
			<img src="images/FMSLogo2.png" alt="logo" class="img-responsive">
			</a>
			</div>
        </div>
	<%--<!-- BEGIN HEADER -->   

	<!-- END HEADER -->--%>
<span class="style1"></span>
    
	
    <!-- BEGIN CONTAINER -->
	<div class="page-container">
	
        
		<!-- BEGIN PAGE -->
		<div class="loginBoxmain">
			     <br/>
			<!-- END PAGE HEADER-->
            <div id="wrapper2">
                <legend>Welcome</div>
			    <form id="Form1" runat="server">		
                           <asp:ScriptManager ID="ScriptManager1" runat="server"  EnablePageMethods="true" />
                    <div id="wrapper3" style="margin-left:20px">
                    
                        <div style="margin-left:10%">
                            <div>
                             <span>Username:</span>
                             <span>
                            <asp:TextBox ID="txtUser" runat="server" Width="200px">
                            </asp:TextBox>
                                 <br/>
                            <span>Password:</span> 
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="200px">
                            </asp:TextBox>
                            </span>
                        
                          </div>
                        </div>
                        <div>
                       
                            <asp:Button style="margin-left:59%;" ID="btnLogin" runat="server" Text="Login" OnClientClick="return false" />
                            <div id="divAlert" style="text-emphasis-color:red; color: #FF0000;"></div>
                            </div>

                  
                        </div>
                     </form>	
               
           
         </div>
                                  
		
			<!-- END OVERVIEW STATISTIC BLOCKS-->
            
		<!-- END PAGE -->

	<!-- END CONTAINER -->
	
    <!-- FOOTER -->
<div class="footlog">
		<div class="footer-inner" id="version">
			
		</div>
		
	</div>

</body>
</html>

