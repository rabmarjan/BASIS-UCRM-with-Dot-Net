<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryCityManagement.UI.CityEntry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    About</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Number of Dwellers</td>
                <td>
                    <asp:TextBox ID="TextBox3" type="number" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Location</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Weather</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" required></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Country</td>
                <td>
                    <asp:DropDownList ID="countryDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="saveButton" runat="server" OnClick="Button1_Click" Text="Save" />
                    <ajaxToolkit:DropDownExtender ID="saveButton_DropDownExtender" runat="server" BehaviorID="Button1_DropDownExtender" DynamicServicePath="" TargetControlID="saveButton">
                    </ajaxToolkit:DropDownExtender>
                    <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="showStatusLabel" runat="server" Text="Show Status "></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
                     <Columns>
                                <asp:TemplateField HeaderText="Serial No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField HeaderText="City Name">
                                    <ItemTemplate>
                                        <%# Eval("CityName") %>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField HeaderText="Country">
                                    <ItemTemplate>
                                        <%# Eval("CountryName")%>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField HeaderText="No Of Dwellers">
                                    <ItemTemplate>
                                        <%# Eval("NoOfDwellers")%>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                         </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
