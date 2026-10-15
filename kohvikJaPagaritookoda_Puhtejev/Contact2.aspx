<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="kohvikJaPagaritookoda_Puhtejev.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Ametimääratus tabel</h3>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ametimaaratusID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ametimaaratusID" HeaderText="ametimaaratusID" InsertVisible="False" ReadOnly="True" SortExpression="ametimaaratusID" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="kohtNimi" HeaderText="kohtNimi" SortExpression="kohtNimi" />
            <asp:BoundField DataField="algus_kuupaev" HeaderText="algus_kuupaev" SortExpression="algus_kuupaev" />
        </Columns>
    </asp:GridView>
    </p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>" DeleteCommand="DELETE FROM [ametimaaratusSet] WHERE [ametimaaratusID] = @ametimaaratusID" InsertCommand="INSERT INTO [ametimaaratusSet] ([algus_kuupaev], [amet_ametID], [tootaja_tootajaID], [koht_kohtID]) VALUES (@algus_kuupaev, @amet_ametID, @tootaja_tootajaID, @koht_kohtID)" SelectCommand="SELECT ametimaaratusSet.ametimaaratusID, ametSet.nimetus, tootajaSet.nimi, kohtSet.kohtNimi, ametimaaratusSet.algus_kuupaev FROM ametimaaratusSet INNER JOIN ametSet ON ametimaaratusSet.amet_ametID = ametSet.ametID INNER JOIN tootajaSet ON ametimaaratusSet.tootaja_tootajaID = tootajaSet.tootajaID INNER JOIN kohtSet ON ametimaaratusSet.koht_kohtID = kohtSet.kohtID" UpdateCommand="UPDATE [ametimaaratusSet] SET [algus_kuupaev] = @algus_kuupaev, [amet_ametID] = @amet_ametID, [tootaja_tootajaID] = @tootaja_tootajaID, [koht_kohtID] = @koht_kohtID WHERE [ametimaaratusID] = @ametimaaratusID">
    <DeleteParameters>
        <asp:Parameter Name="ametimaaratusID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="algus_kuupaev" Type="DateTime" />
        <asp:Parameter Name="amet_ametID" Type="Int32" />
        <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
        <asp:Parameter Name="koht_kohtID" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="algus_kuupaev" Type="DateTime" />
        <asp:Parameter Name="amet_ametID" Type="Int32" />
        <asp:Parameter Name="tootaja_tootajaID" Type="Int32" />
        <asp:Parameter Name="koht_kohtID" Type="Int32" />
        <asp:Parameter Name="ametimaaratusID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
        


    </main>
</asp:Content>
