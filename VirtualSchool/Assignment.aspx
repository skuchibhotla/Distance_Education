<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="VirtualSchool.Assignment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 85px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4">
        <Columns>
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("File") %>' CommandName="Download" 
                        Text='<%# Eval("File") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    Roll Number</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Class</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Class</asp:ListItem>
                        <asp:ListItem>CSE A</asp:ListItem>
                        <asp:ListItem>CSE B</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Year</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>II</asp:ListItem>
                        <asp:ListItem>III</asp:ListItem>
                        <asp:ListItem>IV</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Subject</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Select Subject</asp:ListItem>
                        <asp:ListItem>C Programming</asp:ListItem>
                        <asp:ListItem>Computer Aided Drawing</asp:ListItem>
                        <asp:ListItem>OOPS</asp:ListItem>
                        <asp:ListItem>Web Technologies</asp:ListItem>
                        <asp:ListItem>UNIX Programming</asp:ListItem>
                        <asp:ListItem>C# and .NET Programming</asp:ListItem>
                        <asp:ListItem>Software Testing Methodologies</asp:ListItem>
                        <asp:ListItem>Data Mining and Data Warehousing</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
