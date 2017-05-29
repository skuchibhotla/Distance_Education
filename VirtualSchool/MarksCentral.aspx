<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarksCentral.aspx.cs" Inherits="VirtualSchool.MarksCentral" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSourceMarks" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Roll" HeaderText="Roll" SortExpression="Roll" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Section" HeaderText="Section" 
                    SortExpression="Section" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" 
                    SortExpression="Subject" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceMarks" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MarksConnectionString %>" 
            SelectCommand="SELECT * FROM [Table3]"></asp:SqlDataSource>
    
    </div>
 
 </asp:Content>
