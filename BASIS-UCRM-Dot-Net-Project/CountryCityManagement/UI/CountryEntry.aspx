<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntry.aspx.cs" Inherits="CountryCityManagement.UI.CountryEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 141px;
        }
        .auto-style3 {
            width: 441px;
        }
        .auto-style4 {
            width: 141px;
            height: 194px;
        }
        .auto-style5 {
            width: 441px;
            height: 194px;
        }
        .auto-style6 {
            height: 194px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" type ="text" required runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">Country Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" type="text" runat="server" required></asp:TextBox>
                </td>
                <td class="auto-style3">About</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="statusLabel" runat="server" Text="Show Status  "></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="saveCountryButton" runat="server" OnClick="Button1_Click" Text="Save" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="cancelCountryButton" runat="server" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="10" Width="818px">
                        <Columns>
                            <asp:TemplateField HeaderText="Serial No">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
                <ItemStyle Width="2%" />
            </asp:TemplateField>
                        </Columns>
                        <Columns>
                            <asp:TemplateField HeaderText="Country Name">
                <ItemTemplate>
                    <%# Eval("CountryName") %>
                </ItemTemplate>
                <ItemStyle Width="2%" />
            </asp:TemplateField>
                        </Columns>
                        <Columns>
                            <asp:TemplateField HeaderText="About">
                <ItemTemplate>
                    <%# Eval("About")%>
                </ItemTemplate>
                <ItemStyle Width="2%" />
            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    
    </div>

    </form>
</body>
</html>
