<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="VirtualSchool.Manager" MasterPageFile="~/MasterPage.master" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>

        <div style="height: 475px; width: 814px">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="SqlDataSourceRegistration" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
    
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Upload Marks" />
    
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                Text="Log Out" />
    
    </div>


          </asp:Content>
