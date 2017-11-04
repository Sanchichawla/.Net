<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
</head>
<body>
    <center><heading>Admin</heading></center>
    <form id="form1" runat="server">
    <div>
        <center>
        <table>
            <tr>
                <td>
                    Course:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="MCS"></asp:ListItem>
                        <asp:ListItem Value="MCA"></asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Year:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Roll No.:
                </td>
                <td>
                    <asp:TextBox ID="Sid" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                   Reduce denominator by:
                </td>
                <td>
                    <asp:TextBox ID="den" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <center>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </center>
                </td>
            </tr>
        </table>
            </center>
    </div>
    </form>
</body>
</html>
