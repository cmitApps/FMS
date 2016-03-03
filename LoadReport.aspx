<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="LoadReport.aspx.cs" Inherits="ASPFundManagement.LoadReport" %>

<!-- code section -->
<!-- Layout -->
<!DOCTYPE html>

<html lang="en" class="no-js">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>
 
  <meta charset="utf-8">
  <title>Fund Management Reporting</title>
  <link rel="stylesheet" href="css/jquery-ui.css">

  <script type="text/javascript" src="jquery/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="jquery/thickbox.js"></script>

  <script src="jquery/jquery-1.10.2.js"></script>
  <script src="jquery/jquery-ui.js"></script>

  <script type="text/javascript">

      function OpenRep(OutputTo) {
          var aCode = document.getElementById('cboAreaRep').value;
          var rep = document.getElementById('cboReports').value;
          var mode = document.getElementById('cboMode').value;
          var location = "";

          if (mode == "Mlhuillier") {
              location = "Reports.aspx?RepName=" + rep + "ML" + "&OutputTo=" + OutputTo;
              
          }
          else {
              location = "Reports.aspx?RepName=" + rep + "&OutputTo=" + OutputTo;
            
          }
          if (document.getElementById('cboAreaRep').disabled == false) {
              if (aCode < 0) { alert('Choose Area'); return false; }
              location = location + "&aCode=" + aCode + "&mode=" + mode;
           
          }
          else {location = location + "&aCode=-1"; }

          if (document.getElementById('Date1').disabled == false) {
              if (this.Date1.value == "") { alert('Choose a date from'); return false; }
              location = location + "&Date1=" + this.Date1.value;
              if (new Date(this.Date1.value) > new Date(this.Date2.value)) {

                  alert("Date end must not earlier than date start")
                  return false;
              }
          }

          if (document.getElementById('Date2').disabled == false) {
              if (this.Date2.value == "") { alert('Choose a date to'); return false; }
              if (new Date(this.Date2.value) < new Date(this.Date1.value)) {

                  alert("Date end must not earlier than date start")
                  return false;
              }
              location = location + "&Date2=" + this.Date2.value;
              
          }

          
         //alert(OutputTo + " " + rep);
          PageMethods.usersetUserActivity(OutputTo, rep, UserActivityLogged);

          function UserActivityLogged() {

              window.location = location;
          
          }
          //
      }

    </script>

  <link rel="stylesheet" href="css/thickbox.css" type="text/css" media="screen" />

  <link rel="stylesheet" href="css/style.css">

  <script>
      $(function () { $("#Date1").datepicker(); });

      $(function () { $("#Date2").datepicker(); });
  </script>

    <style type="text/css">
        .auto-style1 { width: 232px; }
        .auto-style2 {
            width: 95px;
        }
        .auto-style3 { width: 95px;  height: 16px; }
        .auto-style4 { width: 232px; height: 16px; }
        #cmdDisplay
        {
            height: 40px;
            width: 180px;
        }
        .auto-style5
        {
            width: 95px;
            height: 25px;
        }
        .auto-style6
        {
            width: 232px;
            height: 25px;
        }
        .auto-style7
        {
            width: 95px;
            height: 25px;
        }
        .auto-style8
        {
            width: 232px;
            height: 25px;
        }
        #cmdDisplay0
        {
            height: 40px;
            width: 180px;
        }
        #cmdExport
        {
            height: 40px;
            width: 180px;
        }
        </style>

</head>

<!-- END HEAD -->
<link rel="shortcut icon" type="image/x-icon" href="images/favFMS.ico"/>
<!-- BEGIN BODY -->
<body class="page-header-fixed" style="">
    <link rel="shortcut icon" type="image/x-icon" href="images/favFMS.ico"/>
    <div style="position:absolute; top:10%; left:25%; vertical-align: middle;  height: auto; border: 2px solid blue; display: inline-block; box-shadow: 10px 10px 5px #888888; background-color:aliceblue;">
    <form id="Form10" runat="server">
        <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods="true" />
        <br />
        <div style="text-align:center; font-size:larger; font-stretch:expanded "> 
            <b>Fund Management Reporting </b></div>
        <br />
        <table>
            <tr>
                <td class="auto-style5">Select Report:</td>
                <td class="auto-style6"> <asp:DropDownList ID="cboReports" runat="server" Height="22px" Width="362px" OnSelectedIndexChanged="cboReports_SelectedIndexChanged" AutoPostBack="True" ></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Area: </td>
                <td class="auto-style8"> <asp:DropDownList ID="cboAreaRep" runat="server" 
                    Height="22px" Width="217px"></asp:DropDownList>
                </td>
            </tr>

              <tr>
                <td class="auto-style2">Mode of Settlement: </td>
                <td class="auto-style1"> <asp:DropDownList ID="cboMode" runat="server" Width="111px" Height="22px"></asp:DropDownList>
                </td>
            </tr>


            <tr>
                <td class="auto-style2">Date Start: </td>
                <td class="auto-style1"> <asp:TextBox ID="Date1" runat="server" Width="111px" Height="22px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style3">Date End: </td>
                <td class="auto-style4"> <asp:TextBox ID="Date2" runat="server" Width="111px" Height="22px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2"> 
                    <br />  
                   <div style="text-align:center"> 
                       <input id="cmdDisplay" type="button" value="Open Report Page" onClick="OpenRep(1)" /> 
                       <input id="cmdExport" type="button" value="Export to Excel" onClick="OpenRep(2)" /> </div> 
                </td>
            </tr>
        </table>
    </form>
    <div class="footer">
        <div style="text-align:center">
            2014 Copyright | All Rights Reserved | CMIT Inc | CARD MRI
                <i class="fa fa-angle-/i>
        </div>
    </div>
    <!-- END FOOTER -->
</div>

</body>
</html>

