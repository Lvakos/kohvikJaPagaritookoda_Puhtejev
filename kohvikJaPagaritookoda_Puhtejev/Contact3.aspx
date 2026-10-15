<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="kohvikJaPagaritookoda_Puhtejev.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">&nbsp;</h2>
        <h3>Ametimääratus tabel</h3>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ametimaaratusID" DataSourceID="SqlDataSource2_ametitootaja">
        <Fields>
            <asp:BoundField DataField="ametimaaratusID" HeaderText="ametimaaratusID" InsertVisible="False" ReadOnly="True" SortExpression="ametimaaratusID" />
            <asp:TemplateField HeaderText="algus_kuupaev" SortExpression="algus_kuupaev">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("algus_kuupaev") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("algus_kuupaev") %>'></asp:Calendar>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("algus_kuupaev") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="koht_kohtID" SortExpression="koht_kohtID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("koht_kohtID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1_koht" DataTextField="kohtNimi" DataValueField="kohtID" SelectedValue='<%# Bind("koht_kohtID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1_koht" runat="server" ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>" SelectCommand="SELECT * FROM [kohtSet]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("koht_kohtID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="tootaja_tootajaID" SortExpression="tootaja_tootajaID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tootaja_tootajaID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_tootaja" DataTextField="nimi" DataValueField="tootajaID" SelectedValue='<%# Bind("tootaja_tootajaID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource
                        ID="SqlDataSource1_tootaja"
                        runat="server"
                        ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>"
                        SelectCommand="SELECT [tootajaID], [nimi] FROM [tootajaSet]">
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("tootaja_tootajaID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="amet_ametID" SortExpression="amet_ametID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("amet_ametID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1_amet" DataTextField="nimetus" DataValueField="ametID" SelectedValue='<%# Bind("amet_ametID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1_amet" runat="server" ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>" DeleteCommand="DELETE FROM [ametSet] WHERE [ametID] = @ametID" InsertCommand="INSERT INTO [ametSet] ([nimetus], [kirjeldus]) VALUES (@nimetus, @kirjeldus)" SelectCommand="SELECT * FROM [ametSet]" UpdateCommand="UPDATE [ametSet] SET [nimetus] = @nimetus, [kirjeldus] = @kirjeldus WHERE [ametID] = @ametID">
                        <DeleteParameters>
                            <asp:Parameter Name="ametID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="nimetus" Type="String" />
                            <asp:Parameter Name="kirjeldus" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nimetus" Type="String" />
                            <asp:Parameter Name="kirjeldus" Type="String" />
                            <asp:Parameter Name="ametID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("amet_ametID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2_ametitootaja" runat="server" ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>" DeleteCommand="DELETE FROM [ametimaaratusSet] WHERE [ametimaaratusID] = @ametimaaratusID" InsertCommand="INSERT INTO [ametimaaratusSet] ([algus_kuupaev], [amet_ametID], [tootaja_tootajaID], [koht_kohtID]) VALUES (@algus_kuupaev, @amet_ametID, @tootaja_tootajaID, @koht_kohtID)" SelectCommand="SELECT * FROM [ametimaaratusSet]" UpdateCommand="UPDATE [ametimaaratusSet] SET [algus_kuupaev] = @algus_kuupaev, [amet_ametID] = @amet_ametID, [tootaja_tootajaID] = @tootaja_tootajaID, [koht_kohtID] = @koht_kohtID WHERE [ametimaaratusID] = @ametimaaratusID">
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
    </p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kohvikjapagarikodaConnectionString1 %>" DeleteCommand="DELETE FROM [ametimaaratusSet] WHERE [ametimaaratusID] = @ametimaaratusID" InsertCommand="INSERT INTO [ametimaaratusSet] ([algus_kuupaev], [amet_ametID], [tootaja_tootajaID], [koht_kohtID]) VALUES (@algus_kuupaev, @amet_ametID, @tootaja_tootajaID, @koht_kohtID)" SelectCommand="SELECT ametimaaratusSet.ametimaaratusID, ametSet.nimetus, tootajaSet.nimi, kohtSet.kohtNimi FROM ametimaaratusSet INNER JOIN ametSet ON ametimaaratusSet.amet_ametID = ametSet.ametID INNER JOIN tootajaSet ON ametimaaratusSet.tootaja_tootajaID = tootajaSet.tootajaID INNER JOIN kohtSet ON ametimaaratusSet.koht_kohtID = kohtSet.kohtID" UpdateCommand="UPDATE [ametimaaratusSet] SET [algus_kuupaev] = @algus_kuupaev, [amet_ametID] = @amet_ametID, [tootaja_tootajaID] = @tootaja_tootajaID, [koht_kohtID] = @koht_kohtID WHERE [ametimaaratusID] = @ametimaaratusID">
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
