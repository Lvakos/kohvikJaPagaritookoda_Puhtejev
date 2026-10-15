<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="kohvikJaPagaritookoda_Puhtejev.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <strong>Töötajad</strong><p>
    <asp:GridView ID="GridView1" runat="server"
        AutoGenerateColumns="False"
        DataKeyNames="tootajaID"
        DataSourceID="SqlDataSource2"
        EmptyDataText="Andmeid ei leitud." OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="313px">
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource2" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="297px">
        <Fields>
            <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" InsertVisible="False" ReadOnly="True" SortExpression="tootajaID" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    Ametit<br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ametid" Width="354px">
        <Columns>
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <strong>
    <asp:SqlDataSource ID="ametid" runat="server" ConnectionString="<%$ ConnectionStrings:KohvikConnectionString %>" SelectCommand="SELECT [nimetus], [kirjeldus] FROM [ametSet]" InsertCommand="INSERT INTO [ametSet] ([nimetus], [kirjeldus]) VALUES (@nimetus, @kirjeldus)"></asp:SqlDataSource>
    <br />
    Lisa Ameti<br />
    </strong>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="ametid" Height="50px" Width="350px">
        <Fields>
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <strong>
    <br />
    </strong>
    </main>
</asp:Content>