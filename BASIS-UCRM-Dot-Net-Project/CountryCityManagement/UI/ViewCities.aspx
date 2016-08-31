<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCities.aspx.cs" Inherits="CountryCityManagement.UI.ViewCities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
        }

        .auto-style3 {
            width: 100px;
        }

        .auto-style4 {
            width: 146px;
        }
        .auto-style5 {
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <asp:RadioButton ID="cityRadioButton" GroupName="rdoButton" runat="server" OnCheckedChanged="cityRadioButton_CheckedChanged" />
                    </td>
                    <td class="auto-style3">City Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="citySearchTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="2">
                        <asp:Button ID="countryCityButton" runat="server" Text="Search" OnClick="countryCityButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RadioButton ID="countryRadioButton" GroupName="rdoButton" runat="server" />
                    </td>
                    <td class="auto-style3">Country Name</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="countryDropDownList" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="4">
                        <asp:GridView ID="countryCityGridView" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="countryCityGridView_PageIndexChanging" PageSize="10">
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
                                <asp:TemplateField HeaderText="About">
                                    <ItemTemplate>
                                        <%# Eval("AboutCity")%>
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
                            <Columns>
                                <asp:TemplateField HeaderText="Location">
                                    <ItemTemplate>
                                        <%# Eval("Location") %>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                            <Columns>
                                <asp:TemplateField HeaderText="Weather">
                                    <ItemTemplate>
                                        <%# Eval("Weather")%>
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
                                <asp:TemplateField HeaderText="About Country">
                                    <ItemTemplate>
                                        <%# Eval("AboutCountry")%>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
