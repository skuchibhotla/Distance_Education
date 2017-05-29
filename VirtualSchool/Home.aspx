<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VirtualSchool.Home" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 464px; margin-bottom: 158px; margin-top: 0px;">
    <b><u>FILE CENTRAL</u></b><br />File Central is the page where the user can view the files that have been uploaded by other users and can download them, if he wants. Also, if he wants, he can upload the files also.
        <asp:Button ID="Button1" runat="server" Text="Go to File Central" 
            onclick="Button1_Click" />
        <br />
        <br />
        <b><u>VIRTUAL EVALUATION</u></b><br />Virtual Evaluation is the page where the students will upload their assignments for evaluation. The Instructor will later view those assignments and evaluate them. This page also has the feature where the Instructor will be able to upload the marks of the students on the basis of their assignments.
        
        <br />
        <asp:Button ID="Button2" runat="server" Text="Go to Virtual Evaluation" 
            onclick="Button2_Click" />
        <br />
        <br />
        <b><u>ADMINISTRATOR LOGIN</u></b><br />Site Administrators can login from here.
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Go to Admin Login" />
        <br />
        <br />
        <br />
        Want to Log Out?<br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Log Out" />
    </div>
      </asp:Content>
