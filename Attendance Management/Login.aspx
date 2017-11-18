<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="bg.jpg">
    <form id="form1" runat="server">
        <div align="center">
            <asp:Menu ID="Menu1" runat="server" BorderColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="Black" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" RenderingMode="Table" DynamicVerticalOffset="20" Font-Underline="True">
                <DynamicHoverStyle Font-Bold="True" />
                <DynamicSelectedStyle Font-Bold="False" Font-Italic="True" Font-Size="X-Large" />
                <Items>
                    <asp:MenuItem Text="Student Login" Value="0"></asp:MenuItem>
                    <asp:MenuItem Text="Teacher Login" Value="1"></asp:MenuItem>
                    <asp:MenuItem Text="Admin Login" Value="2"></asp:MenuItem>
                </Items>
                <StaticHoverStyle Font-Bold="True" Font-Size="X-Large" />
                <StaticMenuItemStyle BackColor="#FFCC99" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Size="Larger" Height="30px" HorizontalPadding="50px" ItemSpacing="10px" VerticalPadding="20px" Width="150px" />
                <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large" />
            </asp:Menu>
            <br />
        </div>
        <div align="center">

            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table align="center">
                        <tr>
                            <td>
                                <font color="white">
                                    <b>
                                Student Id : </b></font>
                            </td>
                            <td>

                                <asp:TextBox ID="sid" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Id Required" ControlToValidate="sid" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font color="white">
                                <b>Password :</b></font>

                            </td>
                            <td>
                                <asp:TextBox ID="spass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="spass" ErrorMessage="Password Required" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <center>
                                <asp:Button ID="slogin" runat="server" Text="Login" OnClick="slogin_Click" Font-Bold="True" />
                                    </center>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table align="center">
                        <tr>
                            <td>
                                <font color="white">
                                    <b>
                                Teacher Id :</b> </font>
                            </td>
                            <td>

                                <asp:TextBox ID="tid" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Id Required" ControlToValidate="tid" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font color="white">
                                <b>Password :</b></font>
                            </td>
                            <td>
                                <asp:TextBox ID="tpass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tpass" ErrorMessage="Password Required" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <center>
                                <asp:Button ID="tlogin" runat="server" Text="Login" OnClick="tlogin_Click" Font-Bold="True" />
                                    </center>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table align="center">
                        <tr>
                            <td>
                                <font color="white"><b>
                                Admin Id : </b></font>
                            </td>
                            <td>

                                <asp:TextBox ID="aid" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Id Required" ControlToValidate="aid" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font color="white">
                                <b>Password :</b></font>
                            </td>
                            <td>
                                <asp:TextBox ID="apass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="apass" ErrorMessage="Password Required" ForeColor="Red" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <center>
                                <asp:Button ID="alogin" runat="server" Text="Login" OnClick="alogin_Click" Font-Bold="True" />
                                    </center>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>

        </div>
    </form>
</body>
</html>
