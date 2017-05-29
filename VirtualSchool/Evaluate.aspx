<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evaluate.aspx.cs" Inherits="VirtualSchool.Evaluate" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height: 561px; text-align: left; font-weight: 700; margin-top: 0px" 
        class="style2">
    
        <span 
            class="style4"><span class="style8">VIEW MARKS OF PREVIOUS ASSIGNMENTS</span><br />
        <span class="style6">To view marks obtained of the previous assignments 
        uploaded, press the followiung button.<br />

    
        </span></span><span class="style1">
        <br />
        <asp:Button ID="Button1" runat="server" Text="View Marks" 
            onclick="Button1_Click" />
        <br />
        </span><span class="style4">
        <br class="style8" />
        <span class="style7"><span class="style8">ASSIGNMENTS CENTRAL</span><br />
        <span class="style6">To upload your assignments, click on the following button.<br />
        <br />
        </span>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Assignment Central" />
        <br />
        <br />
        </span>
        <br />
        </span>
        <span class="style6">Want to Log Out?
    
        <br />
    
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Log Out" />
        </span>
    
    </div>
     </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            font-weight: 700;
            text-decoration: underline;
        }
        .style2
        {
            font-size: medium;
        }
        .style4
        {
        }
        .style6
        {
            font-weight: normal;
        }
        .style7
        {
            font-weight: 700;
        }
        .style8
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
