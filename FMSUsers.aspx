<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="FMSUsers.aspx.cs" Inherits="ASPFundManagement.FMSUsers" %>


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

            var tableTargetCell;
            var OldPasstxt = "", OldUsername = "", isCheck = 0;
            var isAreaMain = false;
            loadRoles();
            loadAreaList();
            
            var id = parent.globalTransactID;

            if (id == 1) {
              
                $("#btnSave").attr("disabled", false);
                $("#cboArea").attr("disabled", true);
               // $("#cboUnit").attr("disabled", true);
                $("#divPassCon").hide();
                $("#cboRoles").attr("disabled", false);

            }

            if (id == 2) {
               
               // $("#tltInfo").append("Update User Information");
                $("#txtUsername").val(parent.globalUser);
                OldUsername = parent.globalUser;
                $("#txtFullName").val(parent.globalFullname);
                
                $("#passArea").hide();
                $("#divPassCon").hide();
                $("#btnSave").val("Update");
                $("#cbSetExpiration").hide();

                PageMethods.getExpirationDate(parent.globalUser, LoadDate)

                function LoadDate(result) {
                   
                    $("#txtExpireDate").val(result);

                }

                enableSave();



            }

            else if (id == 3) {
            
               // $("#tltInfo").append("Update User Password");
                $("#txtUsername").val(parent.globalUsername);
                $("#txtFullName").val(parent.globalFullname);
                $("#txtFullName").attr("disabled", true);
                //$("#txtPassword").val(parent.globalPassword);
                $("#passArea").hide();
                $("#divPassCon").show();
                $("#divPassCon").css("visibility","visible");
                $("#btnSave").val("Update");
                $("#cbSetExpiration").hide();

                PageMethods.getExpirationDate($("#txtUsername").val(), LoadDate)

                function LoadDate(result) {

                    $("#txtExpireDate").val(result);

                }
            }

            else if (id == 4) {

                $("#tltInfo").append("Change Account Expiration");
                $("#txtUsername").val(parent.globalUser);
                $("#txtFullName").val(parent.globalFullname);
                $("#txtUsername").attr("disabled", true);
                $("#txtFullName").attr("disabled", true);
             
                $("#cboArea").attr("disabled", true);
                $("#cboRoles").attr("disabled", true);
                $("#passArea").hide();
                $("#divPassCon").hide();
                $("#divPassCon").css("visibility", "hidden");
                $("#btnSave").val("Update");

                PageMethods.getExpirationDate(parent.globalUser, LoadDate)

                function LoadDate(result) {

                    $("#txtExpireDate").val(result);

                }

            }

            else {

                $("#tltInfo").append("Add User Information");

            }


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
                            
                                $("#cboArea").append(
                                 $('<option></option>').val(item._id).html(item._areaName));
                            
                        });
                      
                        if (id == 2||id == 3||id == 4) {
				//alert(parent.globalArea)
                            $("#cboArea").val(parent.globalArea);
                        }
                        
                            loadUnitList();
                        
                    },
                    failure: function () { prompt("failed"); }

                });

            }


            function enableSave() {

                if (id == 1) {
                    if ($("#txtUsername").val() != "" && $("#txtPassword").val() != "" && $("#txtFullName").val() != "" && ($("#cboRoles").val() != 0 || $("#cboArea").val() != 0 || $("#cboUnit").val() != 0)) {

                        $("#btnSave").attr("disabled", false);


                    }

                    else {

                        $("#btnSave").attr("disabled", true);
                    }
                }

                else if (id == 2 || id == 3 || id == 4) {

                    if ($("#txtUsername").val() != "" && $("#txtFullName").val() != "" && ($("#cboRoles").val() != 0 || $("#cboArea").val() != 0 || $("#cboUnit").val() != 0)) {

                        $("#btnSave").attr("disabled", false);


                    }


                }

            }

            function loadUnitList() {

                var dataToSend;

                //clearTextBox();
             
                    dataToSend = $('#cboArea').val();
                
                areaVal = $('#cboArea option:selected').val();

                PageMethods.getAreaName(dataToSend, onSucess, onError);

                function onSucess(result) {
                   
                    $("#cboUnit").empty();
                    $.each(result, function (index, item) {
                        $("#cboUnit").append(
                         $('<option></option>').val(item._id).html(item._unitName));
                    });

                   
                  
                    if (id == 2 || id == 3 || id == 4) {
                       
                      //  $("#cboUnit").val(parent.globalUnit);

                    }
                }

                function onError(result) {
                    prompt('Something wrong.');
                }

            }

            function loadRoles() {

                PageMethods.LoadRoles(loadSuccess, loadFailed);

                function loadSuccess(response) {

                    $.each(response, function (index, item) {
                        $("#cboRoles").append(
                         $('<option></option>').val(item._id).html(item._detailName));
                    });

                    if (id == 2 || id == 3 || id == 4) {
                        var role = parent.globalRole;
                   
                        $("#cboRoles").val(role);
                        checkRoles();
                       

                    }
                }

                function loadFailed() {


                }

            }

            function checkRoles() {

                if (id == 3) {

                    $("#txtUsername").attr("disabled", true);
                    $("#cboRoles").attr("disabled", true);
                    $("#cboArea").attr("disabled", true);
                    $("#cboUnit").attr("disabled", true);
                   
                }
                else {

                    PageMethods.CheckIfArea($("#cboRoles").val(),CheckStatus)

                    function CheckStatus(isArea) {
                       
                        if (isArea == false) {

                            $("#cboArea").val(0);
                            $("#cboUnit").val(0);
                            $("#cboArea").attr("disabled", true);
                            $("#cboUnit").attr("disabled", true);
                           
                        }

                        else {

                            $("#cboArea").attr("disabled", false);
                            $("#cboUnit").attr("disabled", false);
                        }

                        isAreaMain = isArea

                    }
                    
                }
                enableSave();

            }


            function setPass() {
                PageMethods.GetDefaultPass(LoadPass)
                //var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
                //var string_length = 8;
                //var randomstring = '';
                //for (var i = 0; i < string_length; i++) {
                //    var rnum = Math.floor(Math.random() * chars.length);
                //    randomstring += chars.substring(rnum, rnum + 1);
                //}
                //document.randform.randomfield.value = randomstring;

                function LoadPass(data) {
                    $("#txtPassword").val(data);

                    //if ($("#txtUsername").val() !== "" && $("#txtPassword").val() != "" && $("#txtFullName").val() != "") {

                    //    $("#cboRoles").attr("disabled", false);
                    //}
                    //else {

                    //    $("#cboRoles").attr("disabled", true);

                    //}
                }
        
            }
            $("#txtUsername").change(function () {

                //if ($("#txtUsername").val() != "" && $("#txtPassword").val() != "" && $("#txtFullName").val() != "") {

                //    $("#cboRoles").attr("disabled", false);
                //}
                //else {
                    
                //    $("#cboRoles").attr("disabled", true);

                //}

            })

        

            $("#txtFullName").change(function () {

                //if ($("#txtUsername").val() != "" && $("#txtPassword").val() != "" && $("#txtFullName").val() != "") {

                //    $("#cboRoles").attr("disabled", false);
                //}
                //else {

                //    $("#cboRoles").attr("disabled", true);

                //}

            })

            $("#txtUsername").keypress(function (event) {

                if (event.keyCode == 32) {
                    event.preventDefault();
                }
                if ($("#txtUsername").val() != "") {

                    setPass();
                }
                else {

                    $("#txtPassword").val("");
                }
            });
            $('#txtFullName').keydown(function (e) {
                if (e.ctrlKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                        e.preventDefault();
                    }
                }
            });


            $("#cboRoles").change(function () {

                checkRoles();
               
            });

            $('#cboArea').change(function () {

                $("#cboArea").attr("disabled", false);
                loadUnitList();

            });

       

            $("#cboUnit").change(function () {

                //$("#cboDateFrom").attr("disabled", false);
                enableSave();
            });

            $("#txtPassword").click(function () {

                randomString();
            })

            $("#btnClose").click(function () {
                //if (id == 1 || id == 2) {
                //    parent.loadUserTable2()
                //}
                parent.tb_remove();


            });

            $("#btnSave").click(function () {
            
                  
                    var i=0;
                    var invalidWord = "1234567890";
                    if ($("#txtUsername").val() == "" || $("#cboRoles").val() == 0 || $("#txtFullName").val() == ""||$("#cboArea").val()==null||$("#cboRoles").val()==null) {

                        alert("Cannot continue registration, invalid input. ")

                    }
                    else {
                        while (i < invalidWord.length) {

                            if ($("#txtUsername").val()[0].indexOf(invalidWord[i]) != -1) {

                                alert("First letter should not be a number");
                                i = invalidWord.length;

                            }


                            else {
                                i++;
                                //saveUpdate();
                                if (i == invalidWord.length - 1) {

                                    function PassEncrypted(data) {

                                        OldPasstxt = data;


                                        saveUpdate();

                                    }
                                    PageMethods.Encrypt($("#txtOldPass").val(), PassEncrypted);





                                }
                            }
                        }

                    }
            });

            $("#cbSetExpiration").click(function () {
                    
                
                if (isCheck == 0) {
                    $("#cbSetExpiration").attr('checked', true)
                    $("#txtExpireDate").attr("disabled", false);
                    $("#txtExpireDate").val("");
                    $("#txtExpireDate").datepicker();
                    isCheck = 1;
                }
                else {
                    $("#cbSetExpiration").attr('checked', false)
                    $("#txtExpireDate").attr("disabled", true);
                    $("#txtExpireDate").val("Default");
                    isCheck = 0;
                }
                //if ($("#cbSetExpiration").prop('checked', false)) {

                //    $("#cbSetExpiration").toggle(this.checked)
                //    $("#txtExpireDate").attr("disabled", false);
                //}
                //else {

                //    $("#cbSetExpiration").prop('checked', false)
                //    $("#txtExpireDate").attr("disabled", true);
                   
                //}

            })


            function saveUpdate() {
               
                if ($("#btnSave").val() == "Save") {
                   
                var confirmAdd = confirm("Are you sure you want to register?");
                var requestAmountNotice;
                if (confirmAdd == true) {
                       
                    var UserName = $("#txtUsername").val(),
                        Password = $("#txtPassword").val(),
                        FullName = $("#txtFullName").val(),
                        Role = $("#cboRoles").val(),
                        AreaID = $("#cboArea").val(),
                        UnitID = $("#cboUnit").val(),
                        ExpirationDate = $("#txtExpireDate").val();
                        

                   // alert(ExpirationDate);
                    if (UserName.length >= 6) {

                        if (UserName != "" && Password != "" && FullName != "" || ExpirationDate != "") {

                            if (isAreaMain == true) {
                                if (AreaID == 0||AreaID==null) {

                                    alert("Invalid registration, Select an Area.");
                                }

                                else {

                                    PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                                }
                            }
                            else {

                                PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                            }

                        }

                        else {

                            alert("Invalid registration, blank fields detected.");
                        }
                        //if (Role == 101 || Role == 808) {

                        //    if (UserName != "" && Password != "" && FullName != "" || ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID,UserName, Password, FullName, Role, AreaID,"0", ExpirationDate ,regSuccess, regFailed);
                        //    }

                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}
                        //else if (Role == 202) {

                        //    if (UserName != "" && Password != "" && FullName != "" && ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                        //    }
                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}
                        //    //
                        //else if (Role == 303) {

                        //    if (UserName != "" && Password != "" && FullName != "" && ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                        //    }
                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}


                        //else if (Role == 202) {

                        //    if (UserName != "" && Password != "" && FullName != "" && ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                        //    }
                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}


                        //else if ((Role == 404||Role ==606||Role==707) && AreaID != 0) {

                        //    if (UserName != "" && Password != "" && FullName != "" && ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                        //    }
                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}

                        //else if (Role == 505 ) {

                        //    if (UserName != "" && Password != "" && FullName != "" && ExpirationDate != "") {

                        //        PageMethods.AddUser(parent.UserID, UserName, Password, FullName, Role, AreaID, "0", ExpirationDate, regSuccess, regFailed);
                        //    }
                        //    else {

                        //        alert("Invalid registration, blank fields detected.");
                        //    }
                        //}

                        //else {

                        //    alert("Invalid Registration")
                        //}
                    }
                    else {

                        alert("Invalid Registration, username must aleast 6 characters.");

                    }
                }
                else {

                    alert("Registration Cancelled.");

                }

                function regSuccess(response) {
                    if (response == 0) {
                        alert("LOGIN INFORMATION: \n\nUserName: \n" + UserName 
                            + "\n\nPassword: \n" + Password);
                        alert("Registration Successful");
                        parent.window.location.replace("usermanagement.aspx")
                        //parent.loadUserTable()
                        parent.tb_remove()
                    }
                    else {

                        alert("Account already existed.");
                    }
                }

                function regFailed() {

                    alert("Error registration.");
                }
            }

                else if ($("#btnSave").val() == "Update") {
                    

                var confirmMod = confirm("Are you sure you want this changes?");
                if (confirmMod == true) {

                    var UserName = $("#txtUsername").val(),
                       Password = $("#txtPassword").val(),
                       FullName = $("#txtFullName").val(),
                       Role = $("#cboRoles").val(),
                       AreaID = $("#cboArea").val(),
                       UnitID = $("#cboUnit").val(),
                           UserID = parent.globalUserID,
                           OldPass = parent.globalPassword,
                   	ConfirmPasstxt = $("#txtConfirmPass").val(),
                    NewPasstxt = $("#txtNewPass").val(),
                    AdminID = parent.UserID,ExpirationDate = $("#txtExpireDate").val();

                    

                   // alert(OldPass+" / "+OldPasstxt)

                    if (id == 2) {
                         

                        if (isAreaMain == true) {
                            if (AreaID == 0 || AreaID == null) {

                                alert("Invalid registration, Select an Area.");
                            }
                            else {

                                PageMethods.UpdateUser(AdminID, UserID, UserName, OldUsername, FullName, Role, AreaID, "0", upSuccess, upFailed);
                            }

                        }

                        else {

                            PageMethods.UpdateUser(AdminID, UserID, UserName, OldUsername, FullName, Role, AreaID, "0", upSuccess, upFailed);
                        }
                    }

                    else if(id==4){
                        if (ExpirationDate == "") {
                            alert("Enter date of expiration.");
                        }
                        else {
                            PageMethods.ModifyExpirationDate(UserID, ExpirationDate, AdminID, upSuccess, upFailed)
                        }
                    }
                        
                    else {
                        var count = 0;

                        count += /[a-z]/.test(NewPasstxt) ? 1 : 0;
                        count += /[A-Z]/.test(NewPasstxt) ? 1 : 0;
                        count += /\d/.test(NewPasstxt) ? 1 : 0;
                       // count += /[@]/.test(NewPasstxt) ? 1 : 0;

                        

                        if (OldPasstxt != OldPass) {
                            //alert(UserID+" "+NewPasstxt)
                            alert("Old password is incorrect!");
                        }

			            else if (NewPasstxt != ConfirmPasstxt) {

                            alert("Cannot change password. New password and Confirm password does not match.");
                        }

                        else if (NewPasstxt.length < 8) {

                            alert("Password must atleast 8 characters.")

                        }

                        else if (count != 3) {

                            alert("Password must have an uppercase, lowercase, alphanumeric characters.")

                        }

                        else {
                            PageMethods.UpdatePass(UserID, NewPasstxt, upSuccess, upFailed);

                        }
                    }
                    function upSuccess(response) {
                        
                        if (response == 0) {
                            alert("Update Successful");
                            //parent.loadUserTable()
                          
                            if (id == 2 || id == 4) {
                                parent.window.location.replace("usermanagement.aspx")
                                //parent.loadUserTable()

                            }
                            else {
                                parent.window.location.replace("dashboard.aspx");
                            }
                            parent.tb_remove();
                        }

                        else if (response == 2) {

                            alert("Error updating account, username already exist.");

                        }
                        else {

                            alert("Error updating account");
                        }
                    }

                    function upFailed() {

                        alert("Error registration. Cannot connect to server");
                    }
                        
                }

                else {

                    alert("Update Cancelled.");

                }

            }
            
            
            
            }
          
        });
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

.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}.style1 {color: #80CFEF}
</style>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed" style="">

	<%--<!-- BEGIN HEADER -->   

	<!-- END HEADER -->--%>
<span class="style1"></span>
<div class="clearfix"></div>
    
	
    <!-- BEGIN CONTAINER -->
	<div class="page-container">
	
        
		<!-- BEGIN PAGE -->
		<div class="page-content">
			      
		
			<!-- END PAGE HEADER-->
			
			<div class="clearfix"></div>
             
            <div id="wrapper2">
                
                
                 </div>
			<form id="Form1" runat="server">		
                        <asp:ScriptManager ID="ScriptManager1" runat="server"  EnablePageMethods="true" />
                <div id="wrapper3">
                    
                    <div class="sublegend">
                         User Information</div>
                    <br />
                    <div>
                        <div>
                         <span>Username: </span>
                         <span>
                        <asp:TextBox ID="txtUsername" runat="server">
                        </asp:TextBox></span>
                             <div id="passArea">
                        <span>Password: </span> 
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                         <div id="divPassCon" style="visibility:hidden">
                        <span>Old Password: </span> 
                        <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password">
                        </asp:TextBox><br />
                             <span>New Password: </span> 
                        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password">
                        </asp:TextBox><br />

 			<span>Confirm Password: </span> 
                              <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Width="157px">

                              </asp:TextBox>
                             <br/>
                            </div>
                            </div>
                        </div>

                        <div>
                        <span>Full Name: </span>
                        <span><asp:TextBox ID="txtFullName" runat="server" Text="" Enabled="true" Width="221px"></asp:TextBox>
                        </span>
                        </div>
                <div class="sublegend">
                         User Access</div>
                    <br />
                       <div>
                           <span>User Role: </span>
                           <span><asp:DropDownList ID="cboRoles" AutoPostBack="false" runat="server"></asp:DropDownList></span>
                           <br/>
                           <span>Area: </span>
                           <span><asp:DropDownList ID="cboArea" AutoPostBack ="false" runat="server"></asp:DropDownList></span>
                           <%--<span>Unit: </span>--%>
                           <br/>
                          
                           
                       </div>

                        <div id ="divExpiration">

                             <span>Set account expiration: </span>
                           <span><asp:CheckBox id="cbSetExpiration" runat="server"/></span>
                           <br/>
                           <span><asp:TextBox runat="server" ID="txtExpireDate" Enabled="false" Text="Default" Width="186px"></asp:TextBox></span>
                           <span><asp:DropDownList ID="cboUnit" AutoPostBack ="false" runat="server"></asp:DropDownList></span>

                        </div>
                        
                      
                    </div>
                    <div>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return false" />
                        <asp:Button ID="btnClose" runat="server" Text="Close" OnClientClick="return false" />
                        </div>
                 </form>	
               
           
         </div>
                                  
		
			<!-- END OVERVIEW STATISTIC BLOCKS-->
            
		<!-- END PAGE -->

	<!-- END CONTAINER -->
	
    <!-- FOOTER -->


</body>
</html>
