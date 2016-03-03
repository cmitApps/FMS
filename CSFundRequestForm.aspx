<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSFundRequestForm.aspx.cs" EnableEventValidation="false" Inherits="ASPFundManagement.CSFundRequestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" content="no-cache">
<head runat="server">
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
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/form.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="#" />

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

        .auto-style1 {
            width: 51px;
        }

        .auto-style2 {
            width: 217px;
        }

        input {
            text-transform: capitalize;
        }

    </style>
    <title>Cash Fund Projection</title>
    <link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320" />
</head>
<body class="page-header-fixed" style="">

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

                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-folder-open"></i>
                            <span class="title">Projection</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="CSFund.aspx">
                                    <i class="fa fa-bell"></i>
                                    New Projection
                                </a>

                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-bell"></i>
                                    Approve Projection
                                </a>

                            </li>

                        </ul>
                    </li>


                    <li>
                        <a href="javascript:;">
                            <i class="fa fa-folder-open"></i>
                            <span class="title">Transaction</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-cogs"></i>
                                    Fund Request
							<span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">

                                    <li><a href="#"><i class="fa fa-user"></i>New</a></li>
                                    <li><a href="#"><i class="fa fa-external-link"></i>Confirm</a></li>
                                    <li><a href="#"><i class="fa fa-bell"></i>Acknowledge</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fa fa-globe"></i>
                                    Transfer
							<span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="#"><i class="fa fa-user"></i>New</a></li>
                                    <li><a href="#"><i class="fa fa-external-link"></i>Acknowledge</a></li>

                                </ul>
                            </li>

                        </ul>
                    </li>

                    <li class="">
                        <a href="javascript:;">
                            <i class="fa fa-cogs"></i>
                            <span class="title">Reports</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">
                                    <span class="badge badge-warning">new</span>Report 1</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="badge badge-important">new</span>Report 2</a>
                            </li>

                        </ul>
                    </li>


                    <li class="last ">
                        <a href="#">
                            <i class="fa fa-user"></i>
                            <span class="title">Utilities</span>
                        </a>
                    </li>
            </ul>

        </div>
        <!-- END SIDEBAR MENU-->
        <!-- -->
        <!-- BEGIN PAGE -->
        <div class="page-content">

            <%--            <div id="wrapper2">
                <legend id="lblHeader"></legend>
            </div>--%>
            <form id="Form1" runat="server" class="reqForm">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
                <div id="wrapper3">

                    <div>
                        <table style="width: 812px">
                            <tr>
                                <td style="text-align: right;">
                                    <span>Area:</span>
                                </td>
                                <td class="auto-style2">
                                    <span>
                                        <asp:DropDownList ID="cboArea" runat="server"></asp:DropDownList></span>
                                </td>
                                <td style="text-align: right;" class="auto-style1">
                                    <span>Unit:</span>
                                </td>
                                <td>
                                    <span>
                                        <asp:DropDownList ID="cboUnit" runat="server"></asp:DropDownList></span>
                                </td>
                            </tr>

                            <tr>

                                <td style="text-align: right;">
                                    <asp:HiddenField ID="hdnDate" runat="server" />
                                    <span id="lblDate">Date Needed:</span>
                                </td>
                                <td class="auto-style2">
                                    <span>
                                        <asp:TextBox ID="datePicker" runat="server" Text="" Enabled="true"></asp:TextBox></span>
                                </td>
                                <td style="text-align: right;" class="auto-style1">
                                    <span>Amount:</span>
                                </td>
                                <td>
                                    <span>
                                        <asp:TextBox ID="txtBoxCash" MaxLength="10" runat="server" Height="35" Text="0" onkeypress="return allowOnlyNumber(event)"/>
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    <span>Type:</span>
                                </td>
                                <td class="auto-style2">
                                    <span>
                                        <asp:DropDownList ID="cboTransferType" runat="server" AutoPostBack="false">
                                                <asp:ListItem Value="0">&lt;Select type&gt;</asp:ListItem>
                                                <asp:ListItem Value="1">Cash</asp:ListItem>
                                                <asp:ListItem Value="2">Check</asp:ListItem>   
                                        </asp:DropDownList>
                                    </span>
                                </td>
                                <td style="text-align: right;" class="auto-style1">
                                    <span>Mode of Transfer:</span>
                                </td>
                                <td>
                                    <span>
                                        <asp:DropDownList ID="cboModeTransfer" runat="server" AutoPostBack="false"></asp:DropDownList>
                                    </span>
                                </td>
                            </tr>

                            <tr style="height: 100px">
                                <td style="text-align: right;">
                                    <span>Banks List:</span>
                                </td>
                                <td class="auto-style2">
                                    <span>
                                        <asp:DropDownList ID="cboBankList" runat="server" AutoPostBack="false"></asp:DropDownList></span>
                                </td>
                                <td style="text-align: right;" class="auto-style1">
                                    <span id="lblReciever">Receiver:</span>
                                </td>
                                <td>
                                    <div id="divRemarks">
                                        Surname:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Firstname:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Middle Name:
                                        <br />
                                        <asp:TextBox ID="txtLastname" runat="server" Text=""  Width="100px" CausesValidation="False" />&nbsp;
                                        <asp:TextBox ID="txtFirstname" runat="server" Text=""  Width="100px" />&nbsp;
                                        <asp:TextBox ID="txtMiddlename" runat="server" Text="" Width="100px" />&nbsp;
                                    </div>
                                </td>

                            </tr>
                                <td></td>
                                <td></td>
                                <td>  
                                    <span id="lblMobile">Mobile Number:</span>
                                </td>
                                <td><asp:TextBox ID="txtMobileNumber" MaxLength="10" placeholder="ex. 9191234567" runat="server" Text="" Width="200px" onkeypress="return allowOnlyNumber(event)"/></td>
                            
                        </table>
                    </div>
                    <div>



                        <div id="divFinancialAmountDetail" style="visibility: hidden; overflow: scroll; height: 144px">
           
                            <div id="divDetailForm" class="tags_select">
                            </div>

                            <table id="rowDetailForm">
                            </table>

                        </div>
                    </div>
                    <div id="divReceiverInfo" style="visibility: hidden">
                        <asp:Label ID="number" runat="server" Text="Account Number-&gt;" Visible="false"></asp:Label><span>
                            <asp:TextBox ID="txtAccNo" runat="server" Height="35" Text="" Width="250px" Visible="false" />
                        </span>
                    </div>
                    <span>Remarks</span>
                    <br />
                    <span>
                        <asp:TextBox ID="txtAreaRemark" runat="server" Columns="50" Rows="5" TextMode="multiline" Width="600" />
                    </span>

                </div>
                &nbsp;&nbsp;
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return false" CausesValidation="False" />
                <asp:Button ID="btnClose" runat="server" Text="Close" OnClientClick="return false" />
            </form>


        </div>


        <!-- END CONTAINER -->
        <!-- FOOTER -->
        <%--<div class="footer">
            
        </div>--%>
        <script src="jquery/jquery-1.11.0.js" type="text/javascript"></script>
        <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
        <script src="jquery/datepicker.js" type="text/javascript"></script>
        <script src="jquery/CSFundRequestForm.js" type="text/javascript"></script>
        <script src="jquery/thickboxplug.js" type="text/javascript"></script>
</body>
</html>
