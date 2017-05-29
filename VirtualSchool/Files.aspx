<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Files.aspx.cs" Inherits="VirtualSchool.Files" MasterPageFile="~/MasterPage.master" %>


   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>

       <div style="height: 446px">
    
    
        <table class="style1">
            <tr>
                <td colspan="3" 
                    style="text-align: center; font-weight: 700; text-decoration: underline;">
                    FILE CENTRAL</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    File Central. Upload and Download files here...!!!</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label_Welcome" runat="server" Text="Welcome "></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" onrowcommand="GridView1_RowCommand" Width="280px">
                        <Columns>
                            <asp:TemplateField HeaderText="File">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        CommandArgument='<%# Eval("File") %>' CommandName="Download" 
                                        onclick="LinkButton1_Click" Text='<%# Eval("File") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                            <asp:BoundField DataField="Type" HeaderText="File Type" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle ForeColor="#330099" BackColor="White" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Logout" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Download Files" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>

       </asp:Content>
 