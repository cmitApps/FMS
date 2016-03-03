
<%@ Page Language="C#" AutoEventWireup="True" Inherits="CS" Codebehind="Reports.aspx.cs" %>
<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<%--<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>Fund Management Report</title>
</head>
<body>

    <form id="form1" runat="server">

<% 
                 
    string RepName = HttpContext.Current.Request["RepName"];
    string d1 = HttpContext.Current.Request["Date1"];
    string d2 = HttpContext.Current.Request["Date2"];
    string aCode = HttpContext.Current.Request["aCode"];
    string OutputTo = HttpContext.Current.Request["OutputTo"];
     string mode = HttpContext.Current.Request["mode"];

    Response.Write("Please Wait....");

    UpdateParameter(RepName, Convert.ToDateTime(d1), Convert.ToDateTime(d2), Convert.ToInt32(aCode), mode, Convert.ToInt32(OutputTo));
//Response.Write(CrystalReportViewer1
%>

        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="Reports\AllFundRequest.rpt">
            </Report>
        </CR:CrystalReportSource>
        <CR:CrystalReportPartsViewer ID="CrystalReportPartsViewer1" runat="server" AutoDataBind="true" />
    </form>

</body>
</html>
