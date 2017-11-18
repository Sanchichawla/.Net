<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 125px;
            width: 1073px;
        }
    </style>
</head>

 <body background="bg.jpg">
    <form id="form1" runat="server">
    <div class="auto-style1" align="right">
        <table >
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Student name:" Font-Bold="True" Font-Size="X-Large" ForeColor="Yellow"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="L5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Course:" Font-Bold="True" Font-Size="X-Large" ForeColor="Yellow"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Semester:" ForeColor="Yellow"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
      <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="X-Large" OnClick="Button1_Click" Text="Logout" />
        <br />
        </div>
        <div align="center">
        <table>
            <tr>
                <td>
                    <font color="white">
                        <b>
                            Total Lectures :
                        </b>
                    </font>
                    
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <font color="white">
                        <b>
                       Lectures Attended :
                        </b>
                    </font>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>