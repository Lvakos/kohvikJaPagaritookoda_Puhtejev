<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="kohvikJaPagaritookoda_Puhtejev.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <strong>Töötajad</strong><p>
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="tootajaID"
        DataSourceID="SqlDataSource2"
        EmptyDataText="Andmeid ei leitud." OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="313px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="tootajaID"
                HeaderText="tootajaID" ReadOnly="True" InsertVisible="False" SortExpression="tootajaID" />
            <asp:BoundField DataField="nimi"
                HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="isikukood"
                HeaderText="isikukood" SortExpression="isikukood" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource
            ID="SqlDataSource2"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:KohvikConnectionString %>"
            SelectCommand="SELECT * FROM [tootajaSet]"
            InsertCommand="INSERT INTO [tootajaSet] ([nimi], [isikukood]) VALUES (@nimi, @isikukood)">

            <InsertParameters>
                <asp:Parameter Name="nimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="Int64" />
            </InsertParameters>

        </asp:SqlDataSource>
    </p>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    <p><strong>Lisa töötaja</strong></p>
    <strong>
    <br />
    </strong>
    </main>
</asp:Content>