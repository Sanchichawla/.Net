<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin2.aspx.cs" Inherits="admin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>

        <asp:Menu ID="Menu1" runat="server" BackColor="#FF6699" DynamicVerticalOffset="20" Font-Bold="True" Font-Italic="False" Font-Underline="True" ForeColor="Black" OnMenuItemClick="Menu1_MenuItemClick">
            <DynamicHoverStyle Font-Italic="True" />
            <Items>
                <asp:MenuItem Text="Add a student" Value="0"></asp:MenuItem>
                <asp:MenuItem Text="Add a teacher" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Update Attendance" Value="2"></asp:MenuItem>
            </Items>
            <StaticHoverStyle Font-Italic="True" Font-Size="X-Large" Font-Underline="True" />
            <StaticMenuItemStyle BackColor="#FFE4CA" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Italic="False" Font-Size="Larger" Font-Underline="False" Height="30px" HorizontalPadding="50px" ItemSpacing="10px" VerticalPadding="20px" Width="150px" />
            <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large" Font-Underline="True" />
        </asp:Menu>

                </td>
                <td>

        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                <table>
                    <tr>
                        <td>Sid:</td>
                        <td>
                            <asp:TextBox ID="Sid" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sid Required" ControlToValidate="Sid" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="Name" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Name" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth:</td>
                        <td>
                            <asp:TextBox ID="dob" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dob" ErrorMessage="DOB Required" ForeColor="Red" Display="Dynamic" Visible="False"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="dob" Display="Dynamic" ErrorMessage="Not a valid Date" ForeColor="Red" ValidationExpression="(^(((0[1-9]|1[0-9]|2[0-8])[\/](0[1-9]|1[012]))|((29|30|31)[\/](0[13578]|1[02]))|((29|30)[\/](0[4,6,9]|11)))[\/](19|[2-9][0-9])\d\d$)|(^29[\/]02[\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)" Visible="False"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:TextBox ID="address" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone number:</td>
                        <td>
                            <asp:TextBox ID="phone" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Phone No. Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phone" Display="Dynamic" ErrorMessage="Invalid Phone number" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>EmailId:</td>
                        <td>
                            <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="Email id Required" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>CourseId:</td>
                        <td>
                            <asp:TextBox ID="course" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="course" ErrorMessage="Course Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Year:</td>
                        <td>
                            <asp:TextBox ID="year" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="year" ErrorMessage="Year Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table>
                    <tr>
                        <td>Tid:</td>
                        <td>
                            <asp:TextBox ID="Tid" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Tid" ErrorMessage="Tid Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="Tname" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Tname" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth:</td>
                        <td>
                            <asp:TextBox ID="Tdob" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Tdob" ErrorMessage="DOB Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                    <td>Phone number:</td>
                        <td>
                            <asp:TextBox ID="Tpno" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Tpno" ErrorMessage="Phone No. Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>EmailId:</td>
                        <td>
                            <asp:TextBox ID="eid" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="eid" ErrorMessage="Email Id Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
                </asp:View>
            <asp:View ID="View3" runat="server">
                <table>
            <tr>
                <td>
                    Sid:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox1" ErrorMessage="Sid Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                   Reduce denominator by:
                </td>
                <td>
                    <asp:TextBox ID="den" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="den" ErrorMessage="Count Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <center>
                    <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </center>
                </td>
            </tr>
        </table>
            </asp:View>
        </asp:MultiView>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
