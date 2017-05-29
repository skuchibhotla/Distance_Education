<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="VirtualSchool.First" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    
    <div style="height: 480px">
    
        <span class="style1"><span class="style2"><strong>INTRODUCTION</strong></span><br />
        VirtualSchool(TM) is a system which provides online education. Through 
        VirtualSchool(TM), the students and teachers can interact directly in many ways. 
        All the features are same as that in a normal school. Some of those features 
        are: Uploading/Downloading of subject material and online evaluation of 
        assignments.<br />
        </span><br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Go to Login Page" />
    
    </div>

      </asp:Content>
   
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {}
        .style2
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>

   
