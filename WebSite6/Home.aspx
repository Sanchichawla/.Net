<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .tabs
        {
            position:relative;
            top:1px;
            left:10px;
        }
        .tab
        {
            border:solid 2px black;
            background-color:burlywood;
            padding:5px 10px;
        }
        .selectedTab
        {
            background-color:peachpuff;
            border-bottom:groove;
        }
        .tabs {
            text-align: right;
        }
    </style>
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab" Font-Size="Large" StaticSelectedStyle-CssClass="selectedTab" StaticMenuItemStyle-HorizontalPadding="50px" StaticSelectedStyle-BackColor="White" CssClass="tabs" runat="server" OnMenuItemClick="Menu1_MenuItemClick" BorderColor="Black" BorderWidth="1px" ForeColor="Black" DynamicHorizontalOffset="5" DynamicVerticalOffset="10">
            <DynamicHoverStyle BackColor="#FF9933" />
            <Items>
                <asp:MenuItem Text="Student Login" Value="0" Selected="true"></asp:MenuItem>
                <asp:MenuItem Text="Teacher Login" Value="1"></asp:MenuItem>
                <asp:MenuItem Text="Admin Login" Value="2"></asp:MenuItem>
            </Items>

<StaticMenuItemStyle HorizontalPadding="50px" CssClass="tab"></StaticMenuItemStyle>

<StaticSelectedStyle BackColor="#FFCC99" CssClass="selectedTab"></StaticSelectedStyle>
        </asp:Menu>
    <div>
        <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td>
                        Student Id:
                    </td>
                    <td>
                        <asp:TextBox ID="Sid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Student Id Required" ControlToValidate="Sid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="Spassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="Spassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="StudentLogin" runat="server" Text="Login" OnClick="StudentLogin_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
             <asp:View ID="View2" runat="server">
            <table>
                <tr>
                    <td>
                        Teacher Id:
                    </td>
                    <td>
                        <asp:TextBox ID="Tid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Teacher Id Required" ControlToValidate="Tid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="Tpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password Required" ControlToValidate="Tpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="TeacherLogin" runat="server" Text="Login" OnClick="TeacherLogin_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
      <asp:View ID="View3" runat="server">
            <table>
                <tr>
                    <td>
                        Admin Id:
                    </td>
                    <td>
                        <asp:TextBox ID="Aid" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Admin Id Required" ControlToValidate="Aid" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="Apassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password Required" ControlToValidate="Apassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="AdminLogin" runat="server" Text="Login" OnClick="AdminLogin_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        </asp:MultiView>
    </div>
    </div>
    </form>
    </center>
</body>
</html>
