<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseEntries.aspx.cs" Inherits="Hashing.DatabaseEntries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SHA256 Registration Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <hr />
        <div class="container">
            <div style="margin:auto">
            <asp:GridView ID="GridView1" CellSpacing="10" CssClass="text-center" runat="server" AutoGenerateColumns="False" CellPadding="20" DataKeyNames="HashID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Both">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="HashID" HeaderText="HashID" InsertVisible="False" ReadOnly="True" SortExpression="HashID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="PassWord" HeaderText="PassWord" SortExpression="PassWord" />
                    <asp:BoundField DataField="SaltValue" HeaderText="SaltValue" SortExpression="SaltValue" />
                    <asp:BoundField DataField="HashedPassWord" HeaderText="HashedPassWord" SortExpression="HashedPassWord" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [hashTable]"></asp:SqlDataSource>
        </div>
            </div>
        <br /><br />
        <div class="container">
            <div class="row">
                <div class="col-auto">
                    <asp:GridView ID="GridView2" CssClass="text-center" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HED_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="HED_ID" HeaderText="HED_ID" InsertVisible="False" ReadOnly="True" SortExpression="HED_ID" />
                            <asp:BoundField DataField="HashedPassWord" HeaderText="HashedPassWord" SortExpression="HashedPassWord" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [hashTable_Encrypted_Data]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
