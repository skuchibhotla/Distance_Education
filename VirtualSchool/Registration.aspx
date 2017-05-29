<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="VirtualSchool.Registration" MasterPageFile="~/MasterPage.master" %>


   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server> 
       <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4" 
                    style="font-weight: 700; text-align: center; font-family: Calibri">
                    Registration Page</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Username</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxUN" ErrorMessage="Username is required." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Email ID</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxEmail" ErrorMessage="Email ID is required." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid Email ID." 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBoxPass" ErrorMessage="Password is required." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm Password</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxRPass" ErrorMessage="Please re-enter the password." 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" 
                        ErrorMessage="Passwords don't match." ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Country</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                        <asp:ListItem>Select a country</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Belgium</asp:ListItem>
                        <asp:ListItem>Brazil</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>Netherlands</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                        <asp:ListItem>Spain</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>United States of America</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownListCountry" ErrorMessage="Please select a country." 
                        ForeColor="Red" InitialValue="Select a country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        Width="60px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0000CC" 
                        NavigateUrl="~/Login.aspx">Already a User? Login here.</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>

      </asp:Content>

    
 