<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="kohvikJaPagaritookoda_Puhtejev.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Ametit</h3>
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
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="ametid" Height="50px" Width="350px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </main>
</asp:Content>
