<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSFundAcknowledgeRequest.aspx.cs" Inherits="ASPFundManagement.CSFundAcknowledgeRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>Cash Fund Projection</title>
    <link type="text/css" rel="Stylesheet" href="css/smoothThemeUI.css" />

  
    <link href="css/thickbox.css" rel="stylesheet" type="text/css" />
    <script src="jquery/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="jquery/datepicker.js" type="text/javascript"></script>
    <script src="jquery/thickbox.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            var nullArr = [];
      
            var id = parent.globalTransactID;
            
            if (id != 3) {
                var translist = [];
                translist = $.merge(translist, parent.transferList);
            }
            setModeofTransact();
            loadAreaList();
            
            function loadAreaList() {
                $.ajax({
                    type: "POST",
                    url: "CSFundRequestForm.aspx/LoadArea",
                    data: {},
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var data = response.d;
                        $.each(data, function (index, item) {
                        //alert(item._areaName)
                            $("#cboArea").append(
                             $('<option></option>').val(item._id).html(item._areaName));
                        });
                        var area = parent.globalArea;
                        //alert(area);
                       //area = area.substring(area.indexOf("-")+1, area.indexOf(")"));
                       // $("#cboArea option:contains(" + area + ")").attr('selected', 'selected');
                           
                        $('#cboArea option').filter(function () {
                            return ($(this).text() == area);
                        }).prop('selected', true);

                       /* if ($("#cboArea").val() == 0) {

                            alert("Area has been deleted. Cannot continue transaction.");
                            parent.tb_remove();


                        }*/
                        loadUnitList();
                        
                    },
                    failure: function () { prompt("failed"); }

                });

            }
            $('#txtOrDate').keypress(function (event) {

                event.preventDefault();

            });

            $('#txtTransDate').keypress(function (event) {

                event.preventDefault();

            });

            $("#txtOrDate").datepicker({dateFormat: 'mm/dd/yy'});
            $("#txtTransDate").datepicker({ dateFormat: 'mm/dd/yy'});

            function setModeofTransact() {

                $("#lblAmountInfo").css("visibility", "hidden");
                $("#lblAmountInfo").hide();
                $("#lblNumTrans").css("visibility", "hidden");
                $("#lblNumTrans").hide();
                
              
                if (id == 3) {

                    $("#divAckform").show();
                    $("#divAccount").hide();
                    $("#tb_header").append("Acknowledge Fund Request");
                    $("#lblAmountInfo").hide();
                    $("#lblNumTrans").hide();
                    $("#wrapper2").append("<legend>Encode Acknowledge Fund Request</legend>");
                    $("#btnSave").val("Acknowledge");
                    $("#txtAreaRemark").attr("disabled", false);
                    $("#cboArea").attr("disabled", true);
                    $("#cboUnit").attr("disabled", true);
                    $("#datePicker").attr("disabled", true);
                    $("#formType").append("Acknowledge Fund Request Remark")
                }

                else if (id == 6) {
                    $("#tb_header").append("Acknowledge Fund Transfer");
                    $("#wrapper2").append("<legend>Encode Acknowledge Fund Transfer</legend>");
                    $("#btnSave").val("Acknowledge");
                    $("#txtAreaRemark").attr("disabled", false);
                    $("#cboArea").attr("disabled", true);
                    $("#cboUnit").attr("disabled", true);
                    $("#datePicker").attr("disabled", true);
                    $("#formType").append("Acknowledge Fund Transfer Remark")

                   
                    if (parent.localMode == "Bank" || parent.localMode == "MLhuillier" || parent.localMode == "Cebuana" || parent.localMode == "Palawan") {
                        var amount = ((parent.totalAmount).toFixed(2)).replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,");
       
                        $("#transferForm1").hide();
                        $("#lblAmountInfo").css("visibility", "visible");
                        $("#lblAmountInfo").show();
                        $("#lblNumTrans").css("visibility", "visible");
                        $("#lblNumTrans").show();
                        $("#lblAmountInfo").empty();
                        
                        if (amount.indexOf(".") != -1) {
                            $("#lblAmountInfo").append("Total Amount: Php " + amount.substring(0, amount.indexOf(".") + 3));
                        }
                        else {
                           
                            $("#lblAmountInfo").append("Total Amount: Php " + amount +".00");
                        }
                        $("#lblNumTrans").empty();
                        $("#lblNumTrans").append("Number of selected item(s): " + parent.transferList.length);
                    }
                }

                else if (id == 7) {
                    $("#divAccount").hide();
                    $("#datePicker").attr("disabled", true);
                    $("#lblDate").empty();
                    $("#lblDate").append("Date of Transfer:");
                    $("#tb_header").append("Cancel Fund Transfer");
                    $("#wrapper2").append("<legend>Encode Remark for Cancel Fund Transfer</legend>");
                    $("#btnSave").val("Cancel Fund Transfer");
                    $("#txtAreaRemark").attr("disabled", false);
                    $("#cboArea").attr("disabled", true);
                    $("#cboUnit").attr("disabled", true);
                   // $("#datePicker").hide();
                    $("#divAckform").hide();
                    //$("#divAcknowledge").css("visibility", "hidden");
                    $("#divAcknowledge").hide();
                    $("#formType").append("Cancel Transfer Remark")
                    $("#btnAcknowledge").val("Confirm Cancel");
                }

                if (id == 8) {
                    $("#tb_header").append("Acknowledge Fund Request");
                    $("#wrapper2").append("<legend>Encode Cancel Fund Request</legend>");
                    $("#btnSave").val("Acknowledge");
                    $("#txtAreaRemark").attr("disabled", false);
                    $("#cboArea").attr("disabled", true);
                    $("#cboUnit").attr("disabled", true);
                    $("#datePicker").attr("disabled", true);
                    $("#formType").append("Acknowledge Fund Request Remark")
                    $("#divAcknowledge").hide();
                    //$("#divAckform").hide();
                }

                else {


                }

              
            }

            function checkList() {

                var ModeSelect = $("#cboModeTransfer option:selected").text();
                //alert(ModeSelect);
                if (ModeSelect == "Bank") {



                    $("#cboBankList").empty();
                    $("#txtAccNo").val("");
                   

                    setBankList();

                }

                else if (ModeSelect == "MLhuillier") {

                    PageMethods.loadBanks($("#cboArea").val(), $("#cboUnit").val(), onSucess, onError);
                    $("#cboBankList").empty();
                    function onSucess(response) {

                        $.each(response, function (index, item) {
                            $("#cboBankList").append(
                             $('<option></option>').val(item._id).html(item._bankName));
                        });

                        setAccNumber();
                    }


                    function onError(response) {

                        alert("failed");
                    }


                }

            }

            function setBankList() {


                //$.ajax({
                //    type: "POST",
                //    url: "CSFundRequestForm.aspx/loadBanks",
                //    data: { foo: $("#cboArea").val(), foo2: $("#cboUnit").val() },
                //    contentType: "application/json; charset=utf-8",
                //    dataType: "json",
                //    success: function (response) {
                //        var data = response.d;
                //        $.each(data, function (index, item) {
                //            $("#cboBankList").append(
                //             $('<option></option>').val(item._id).html(item._bankName));

                //        });


                //        if (id == 3) {
                //            var bank = parent.globalBank;
                //            $("#cboBankList option:contains(" + bank + ")").attr('selected', 'selected');
                //            setAccNumber();

                //        }
                //    },
                //    failure: function () { prompt("failed"); }

                //});



                if (id == 3) {
                    PageMethods.loadBanks($("#cboArea").val(), $("#cboUnit").val(), onSucess, onError);
                }

                else if (id == 7) {

                    PageMethods.loadBanks(0, 0, onSucess, onError);
                }
                function onSucess(result) {
                    $.each(result, function (index, item) {
                        $("#cboBankList").append(
                         $('<option></option>').val(item._id).html(item._bankName));

                    });

                    var bank = parent.globalBank;
      
                    $("#cboBankList option:contains(" + bank + ")").attr('selected', 'selected');
                    //alert(bank);
                    setAccNumber();
                   
                }

                function onError() {

                }
            }

            function setAccNumber() {


                if ($("#cboUnit").val() != 0 && $("#cboBankList").val() != 0) {

                    PageMethods.getAccountNumber($("#cboBankList").val(), $("#cboUnit").val(), onSucess, onError);

                   
                    var receiver = parent.globalReceiver;
                    $("#txtReceiver").val(receiver);
                }

                else if ($("#cboModeTransfer option:selected").text() == "MLhuillier") {
                    // alert("test");
                    PageMethods.generateControlNumber($("#cboArea").val(), $("#cboUnit").val(), onSucess, onError)
                  
                    var receiver = parent.globalReceiver;
                    $("#txtReceiver").val(receiver);
                    

                }
                

                else if(id==7) {
                    $("#divAccount").hide();
                    $("#txtAccNo").hide();

                }
                function onSucess(response) {

                    $("#txtAccNo").val(response);

                }

                function onError(response) {

                    alert("error");
                }


            }

            function loadTransMode() {


                $.ajax({
                    type: "POST",
                    url: "CSFundRequestForm.aspx/loadTransferMode",
                    data: {},
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var data = response.d;
                        $.each(data, function (index, item) {
                            $("#cboModeTransfer").append(
                             $('<option></option>').val(item._id).html(item._modeName));
                        });
                      
                        var mode = parent.globalMode;
                        $("#cboModeTransfer option:contains(" + mode + ")").attr("selected", "selected");
                        checkList();

                    
                    },
                    failure: function () { prompt("failed"); }

                });

            }

            function loadUnitList() {

                //clearTextBox();
                var dataToSend = $('#cboArea').val();
                areaVal = $('#cboArea option:selected').text();

                PageMethods.getAreaName(dataToSend, onSucess, onError);

                function onSucess(result) {
                    $("#cboUnit").empty();
                    $.each(result, function (index, item) {
                      //  alert(item._unitName)
                        $("#cboUnit").append(
                         $('<option></option>').val(item._id).html(item._unitName));
                    });


                    var unit = parent.globalUnit;
                    unit = unit.substring(unit.indexOf(")")+1);
                    //alert(unit);
                    var date = parent.globalDate;
                    var type = parent.globalType;
                    var amount = parent.globalAmount;

                    //$("#cboUnit option:contains(" + unit + ")").attr("selected", "selected");
                    $('#cboUnit option').filter(function () {
                        return ($(this).text() == unit);
                    }).prop('selected', true);

                    /*if ($("#cboUnit").val() == 0) {

                        alert("Unit has been deleted. Cannot continue transaction.");
                        parent.tb_remove();

                    }*/

                    $("#cboTransferType option:contains(" + type + ")").attr("selected", "selected");
                    $("#txtBoxCash").val(amount);
                    // alert($("#cboUnit").val());

                    $("#datePicker").val(date);


                    loadTransMode();
                    
                }

                function onError(result) {
                    prompt('Something wrong.');
                }

            }

            function checkDate() {

                PageMethods.CheckUtilizationDate($("#datePicker").val(), onSuccess, onError);

                function onSuccess(response) {

                    if (response == "2" || response == "3") {

                        alert("Invalid Projection Date: Date is not covered on working days");
                        $("#datePicker").val("");

                    }

                    else if (response == "0") {

                        alert("Invalid Projection Date: Encoding must be minimum of three (3) working days before utilization");
                        $("#datePicker").val("");

                    }
                }

                function onError() { }

            }

           
            function acknowledgeRequest() {
                var reqID;
                reqID = parent.globalRequestID;


                $("#btnSave").attr("disabled", true);
                $("#btnClose").attr("disabled", true);

                var remark = $("#txtAreaRemark").val(),
                    orDate = $("#txtOrDate").val(),
                    orNumber = $("#txtOrNumber").val(),
                    UserID = parent.UserID;
             
                if (id == 3) {
                   
                    PageMethods.AcknowledgeRequest("1", reqID, remark, orDate, orNumber, UserID, nullArr, onSuccess, onError);
                }

                else {

                    if (parent.transferList.length <= 0) {
                        reqID = parent.globalRequestID;
                    }

                    else {

                        reqID = 0;
                    }
                   // alert(UserID+" "+reqID+ " "+remark+" " + orNumber + " " + orDate + " " + parent.transferList)
                  
                    PageMethods.AcknowledgeRequest("2", reqID, remark, orDate, orNumber, UserID,  translist, onSuccess, onError);
                }
                function onSuccess() {
                    if (id == 3) {
                        alert("Request Acknowledged");
                        parent.window.location.replace("Cashfundrequest.aspx");

                    }

                    else {
                        alert("Transfer Acknowledged");
                        parent.window.location.replace("CSFundtransfer.aspx");
                    }
                    parent.tb_remove();
                }

                function onError() {

                    alert("Error in Acknowledgement of Transfer");
                    enableButtons()
                }

            }

            function cancelTransfer() {
           
                var reqID = parent.globalRequestID,
                    bankID = $("#cboBankList").val(),
                    Amount = $("#txtBoxCash").val(),
                    UserID = parent.UserID,
                    Remark = $("#txtAreaRemark").val(),
                    AccountNo = $("#txtAccNo").val();
                    
             
                    PageMethods.cancelTransferRequest(reqID, bankID, Amount, UserID, AccountNo, Remark, onSuccess, onError);
             
             
                function onSuccess(response) {

                    if (response == 1) {
                        alert("Transfer Cancellation Successful!");
                        //parent.fillTransferTable();
                         parent.window.location.replace("CSFundtransfer.aspx"); 

                        parent.fillTransferTable(1,10,0);
                        parent.tb_remove();

                    }

                    else {

                        alert("Error cancelling request.")
                    }
                }

                function onError() {
                    enableButtons()
                    alert("Error: Failed to cancel transfer request");

                }

            }

            $("#btnClose").click(function () {

                //if (id == 3) {
                //    parent.fillTransferTable(1, 10, 0);
                //}
                //else {

                //    parent.loadSession();
                //}
                parent.tb_remove();


            });

   


            $("#btnAcknowledge").click(function () {
                $("#btnAcknowledge").attr("disabled",true)

                if ($("#txtOrNumber").val() == ""&&(id==6||id==3)) {

                    alert("Invalid Acknowledgement, OR Number Required");
                    enableButtons()
                }

                else if ($("#txtOrDate").val() == "" && (id == 6 || id == 3)) {
                    alert("Invalid Acknowledgement, OR Date Required")
                    enableButtons()
                }
 	        else if ($("#txtAreaRemark").val() == "") {

 	            alert("Invalid Acknowledgement, remarks required.")
 	            enableButtons()

                }

                else {
                    var message;
                    switch (id) {
                        case 7:
                            if ($("#txtAreaRemark").val().length > 5) {

                                var confirmCan = confirm("Are you sure you want to cancel this fund transfer?");

                                if (confirmCan == true) {

                                    cancelTransfer();
                                }
                                else {
                                    enableButtons()
                                }
                            }
                            else {

                                alert("Please input remark. Must be more than 5 characters.");
                                enableButtons()
                            }


                            break;

                        default:

                            if (id == 3) {

                                message = "request";

                            }
                            else {

                                message = "transfer";

                            }

                            var confirmAck = confirm("Are you sure you want to acknowledge this " + message + "?");

                            if (confirmAck == true) {

                                acknowledgeRequest();

                            }

                            else {

                                alert("Acknowledge " + message + " cancelled.")
                                enableButtons()
                            }

                            break;

                    }
                }
            });


            function enableButtons() {


                $("#btnAcknowledge").attr("disabled", false)
            }
        

        });


        function allowOnlyNumber(evt) {
            alert(id);
            if (true) {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if (charCode != 46 && charCode > 31
                  && (charCode < 48 || charCode > 57))
                    return false;
                return true;
            } else {
                var theEvent = evt || window.event;
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
                var regex = /^[0-9]+$/;
                if (!regex.test(key)) {
                    theEvent.returnValue = false;
                    if (theEvent.preventDefault) theEvent.preventDefault();
                }
            }


        }

        </script>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
	<meta content="" name="description"/>
	<meta content="" name="author"/>
	<meta name="MobileOptimized" content="320"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>      
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link href="css/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
	<link href="css/fullcalendar.css" rel="stylesheet" type="text/css"/>
	<link href="css/jqvmap.css" rel="stylesheet" type="text/css"/>
	<link href="css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-conquer.css" rel="stylesheet" type="text/css"/>
	<link href="css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="css/tasks.css" rel="stylesheet" type="text/css"/>
	<link href="css/default.css" rel="stylesheet" type="text/css" id="style_color"/><!-- HEADER VALUES -->
	<link href="css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="css/form.css" rel="stylesheet" type="text/css"/>	
	<link rel="shortcut icon" href="#"/>
    
<style type="text/css">
    #ui-datepicker-div { display: none; } 

.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
</style>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed" style="">


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
								
								<li><a href="#"><i class="fa fa-user"></i>  New</a></li>
								<li><a href="#"><i class="fa fa-external-link"></i>  Confirm</a></li>
								<li><a href="#"><i class="fa fa-bell"></i>  Acknowledge</a></li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
							<i class="fa fa-globe"></i> 
							Transfer
							<span class="arrow"></span>
							</a>
							<ul class="sub-menu">
								<li><a href="#"><i class="fa fa-user"></i>  New</a></li>
								<li><a href="#"><i class="fa fa-external-link"></i>  Acknowledge</a></li>

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
        
		<!-- BEGIN PAGE -->
		<div class="page-content">
			      
			
			
			
			<!-- END PAGE HEADER-->
			
             
            <div id="wrapper2">
            
                 </div>
			<form id="Form1" runat="server" class="reqForm" >		
                        <asp:ScriptManager ID="ScriptManager1" runat="server"  EnablePageMethods="true" />
                <div id="wrapper3">
                    <div id="transferForm1">
                        <table border="0">
                            <tr>
                                <td style="text-align:right;"> <span>Area:</span></td>
                                <td>  <asp:DropDownList ID="cboArea" runat="server"></asp:DropDownList></td>
                                <td style="text-align:right;"> <span>Unit:</span></td>
                                <td> <asp:DropDownList ID="cboUnit" runat="server"></asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="text-align:right;margin-left:-10px"> <span id="lblDate">Date Needed:</span></td>
                                <td> <asp:TextBox ID="datePicker" runat="server" Text=""></asp:TextBox></td>
                                <td style="text-align:right;"> <span>Amount:</span></td>
                                <td> <span><asp:TextBox ID="txtBoxCash" runat="server" Height="35" Text="0" /></span></td>
                            </tr>
                            <tr>
                                <td style="text-align:right;"> <span>Transfer Type:</span></td>
                                <td> <span>
                                    <asp:DropDownList ID="cboTransferType" runat="server" AutoPostBack="false">
                                        <asp:ListItem Value="0">&lt;Select type&gt;</asp:ListItem>
                                        <asp:ListItem Value="1">Cash</asp:ListItem>
                                        <asp:ListItem Value="2">Check</asp:ListItem>
                                    </asp:DropDownList>
                                    </span>
                                </td>
                                <td style="text-align:right;"> <span>Mode of Transfer:</span></td>
                                <td> <span><asp:DropDownList ID="cboModeTransfer" runat="server" AutoPostBack="false"></asp:DropDownList></span></td>
                            </tr>
                             <tr>
                                <td style="text-align:right;"> <span>Banks List:</span> </td>
                                <td> <span><asp:DropDownList ID="cboBankList" runat="server" AutoPostBack="false"></asp:DropDownList></span></td>
                            </tr>
                        </table>
                        
                        <div>
                        
                        </div>
           
                    <div>
                       
                         
                    </div>
                    
                    <div>
                       
                    </div>
                

                       <div id="divAccount"> 
                        <br />
                        <asp:Label ID="number" runat="server" Text="Account Number-&gt;"></asp:Label><span>
                        <asp:TextBox ID="txtAccNo" runat="server" Height="35px" Text="" Width="265px" />
                        <br />
                        </span>
                           </div>
                        <div class="sublegend" id="formType">
                        </div>
                       
                </div>
                <div >
                    <br/>
                       <div id ="divAckform">
                        <span id="lblAmountInfo" style="visibility:hidden;font-size:20px;color:green;">Total amount: 100000</span>
                           <br/>
                        <span id="lblNumTrans"  style="visibility:hidden">Number of transfer: 20</span>
                           <br/>
                           <br/>
                        <span>OR Number:</span>
                        <span><asp:TextBox ID="txtOrNumber"  MaxLength="15" runat="server" Height="35" Text="" onkeypress="return allowOnlyNumber(event)"/></span>
                        <br />

                        <span>OR Date:</span>
                        <span><asp:TextBox ID="txtOrDate" runat="server" Height="35" Text="" /></span>
                        </div>
                       </div>
                        Remarks
                        <br />
                        <span>
                        <asp:TextBox ID="txtAreaRemark" MaxLength="1000" runat="server" Columns="50" Rows="5" TextMode="multiline" Width="600" />
                        </span>
                  
                   
                        &nbsp;&nbsp;
                        <asp:Button ID="btnAcknowledge" runat="server" Text="Acknowledge" OnClientClick="return false" />
                        <asp:Button ID="btnClose" runat="server" Text="Close" OnClientClick="return false" />
                 </form>	
               </div>
           
         </div>
                                  
		
        	   
      
						
		<%--	<!-- STAT BLOCKS-->
			<div class="row">
            	<div class="col-md-3 col-sm-6">
					<div class="circle-stat stat-block">
						<div class="visual">
							<div style="display: inline; width: 100px; height: 100px;"><canvas width="100" height="100"></canvas><input class="knobify" data-width="115" data-thickness=".2" data-skin="tron" data-displayprevious="true" value="10" data-max="100" data-min="1" readonly="readonly" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; background-image: none; font-weight: bold; font-style: normal; font-variant: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(135, 206, 235); padding: 0px; -webkit-appearance: none; background-position: initial initial; background-repeat: initial initial;"></div>
						</div>
						<div class="details">
							<div class="title">Projection<i class="fa fa-caret-up"></i></div>
							<div class="number"><asp:Label ID="" style="text-align:center">" runat="server" Text="Label"></asp:Label></div>
							<span class="label label-danger"><a href="CSFundProjApproval.aspx"><i class="fa fa-map-marker"></i><asp:Label ID="" style="text-align:center">Pending" runat="server" Text="Label"></asp:Label></a></span>
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
            
		<!-- END PAGE -->

	<!-- END CONTAINER -->
	
    <!-- FOOTER -->
<%--<div class="footer">
		<div class="footer-inner">
			2014 Copyright | All Rights Reserved | CMIT Inc | CARD MRI
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="fa fa-angle-up"></i>
			</span>
		</div>
	</div>--%>

</body>
</html>
