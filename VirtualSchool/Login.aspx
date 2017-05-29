<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VirtualSchool.Login" MasterPageFile="~/MasterPage.master" %>


  <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>

      <div>
    
        <table class="style1">
            <tr>
                <td class="style7" colspan="3">
                    VirtualSchool (TM) is here...!!!</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5" 
                    style="font-weight: 700; font-family: Calibri; text-align: center">
                    Login Page</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    Username</td>
                <td class="style5">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Password</td>
                <td class="style5">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" 
                        Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button_Login" runat="server" onclick="Button_Login_Click" 
                        Text="Login" Width="47px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0000CC" 
                        NavigateUrl="~/Registration.aspx">New User register here!</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    
      </asp:Content>

