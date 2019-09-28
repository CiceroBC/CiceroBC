<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CBCTheatreEnter.aspx.vb" Inherits="CBCTheatreEnter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="EnterEntity" runat="server">
    <div>
    
        Enter an entity into the database<br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="CRTRecords" EnableModelValidation="True" GridLines="Vertical">
            <EditItemTemplate>
                EntityName:
                <asp:TextBox ID="EntityNameTextBox" runat="server" Text='<%# Bind("EntityName") %>' />
                <br />
                EntityType:
                <asp:TextBox ID="EntityTypeTextBox" runat="server" Text='<%# Bind("EntityType") %>' />
                <br />
                PictureURL:
                <asp:TextBox ID="PictureURLTextBox" runat="server" Text='<%# Bind("PictureURL") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                EntityName:
                <asp:TextBox ID="EntityNameTextBox" runat="server" Text='<%# Bind("EntityName") %>' />
                <br />
                EntityType:
                <asp:TextBox ID="EntityTypeTextBox" runat="server" Text='<%# Bind("EntityType") %>' />
                <br />
                PictureURL:
                <asp:TextBox ID="PictureURLTextBox" runat="server" Text='<%# Bind("PictureURL") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                EntityName:
                <asp:Label ID="EntityNameLabel" runat="server" Text='<%# Bind("EntityName") %>' />
                <br />
                EntityType:
                <asp:Label ID="EntityTypeLabel" runat="server" Text='<%# Bind("EntityType") %>' />
                <br />
                PictureURL:
                <asp:Label ID="PictureURLLabel" runat="server" Text='<%# Bind("PictureURL") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:FormView>
        <table class="auto-style1">
            <tr>
                <td>
                    Entity<asp:TextBox ID="EntityEntry" runat="server"></asp:TextBox>
                    Entity Type <asp:DropDownList ID="EntityType" runat="server">
                        <asp:ListItem>Theater</asp:ListItem>
                        <asp:ListItem>Performer</asp:ListItem>
                        <asp:ListItem>Crewmember</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                        <asp:ListItem>Designer</asp:ListItem>
                    </asp:DropDownList>
                    Picture URL<asp:TextBox ID="EntityPicURL" runat="server"></asp:TextBox>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="Entities" EmptyDataText="There are no data records to display." EnableModelValidation="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="EntityName" HeaderText="EntityName" SortExpression="EntityName" />
                            <asp:BoundField DataField="EntityType" HeaderText="EntityType" SortExpression="EntityType" />
                            <asp:BoundField DataField="PictureURL" HeaderText="PictureURL" SortExpression="PictureURL" />
                        </Columns>
                    </asp:GridView>
                    <asp:AccessDataSource ID="Entities" runat="server" DataFile="~/_database/CRTRecords.mdb" InsertCommand="INSERT INTO tblEntities(EntityName, EntityType, PictureURL) VALUES (EntityEntry,EntityType,EntityPicURL)" SelectCommand="SELECT tblEntities.* FROM tblEntities"></asp:AccessDataSource>
                </td>
            </tr>
        </table>
        <br />
        <asp:AccessDataSource ID="CRTRecords" runat="server" DataFile="~/_database/CRTRecords.mdb" SelectCommand="SELECT [EntityName], [EntityType], [PictureURL] FROM [tblEntities]"></asp:AccessDataSource>
    
        <br />
    
    </div>
    </form>
</body>
</html>
