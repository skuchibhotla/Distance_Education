<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="VirtualSchool.Marks" MasterPageFile="~/MasterPage.master" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>

    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Roll Number</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter Roll Number" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Class</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>Select Class</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Please select a class" 
                        ForeColor="Red" InitialValue="Select Class"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Section</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                        <asp:ListItem>Select Section</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DropDownList2" ErrorMessage="Please select section" 
                        ForeColor="Red" InitialValue="Select Section"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Year</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>II</asp:ListItem>
                        <asp:ListItem>III</asp:ListItem>
                        <asp:ListItem>IV</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList3" ErrorMessage="Please select year" 
                        ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Subject</td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList4" runat="server" Width="180px">
                        <asp:ListItem>Select Subject</asp:ListItem>
                        <asp:ListItem>Computer Programming</asp:ListItem>
                        <asp:ListItem>Technical English</asp:ListItem>
                        <asp:ListItem>Environmental Science</asp:ListItem>
                        <asp:ListItem>Data Structures through C</asp:ListItem>
                        <asp:ListItem>OOPS</asp:ListItem>
                        <asp:ListItem>Design and Analysis of Algorithms</asp:ListItem>
                        <asp:ListItem>Web Technologies</asp:ListItem>
                        <asp:ListItem>Operating Systems</asp:ListItem>
                        <asp:ListItem>Computer Graphics</asp:ListItem>
                        <asp:ListItem>C# and .NET Programming</asp:ListItem>
                        <asp:ListItem>OOAD</asp:ListItem>
                        <asp:ListItem>Software Testing Methodologies</asp:ListItem>
                        <asp:ListItem>DMDW</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList4" ErrorMessage="Please select Subject Name" 
                        ForeColor="Red" InitialValue="Select Subject"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Marks Obtained</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter Marks obtained" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Upload Marks" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Log Out" />
                </td>
            </tr>
        </table>
    
    </div>
     </asp:Content>