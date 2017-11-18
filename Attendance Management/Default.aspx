<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 231px;
            width: 1177px;
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
        <asp:Button ID="Button2" runat="server" Font-Size="X-Large" Text="Change Password" OnClick="Button2_Click" />
        <br />
      <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="X-Large" OnClick="Button1_Click" Text="Logout" />
        <br />
        </div>
        <div align="center">
            
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table>
                        <tr>
                            <td><font color="white"><b>Total Lectures : </b></font></td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td><font color="white"><b>Lectures Attended : </b></font></td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table>
                        <tr>
                            <td>
                                <font color="white">
                                    <b>
New Password:
                                    </b>
                                </font>

                                </td>
                            <td>

                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>

                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter new passsword" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font color="white">
                                    <b>
Confirm Password:
                                    </b>
                                </font>

                                </td>
                            <td>

                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

                            </td>
                            <td>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ErrorMessage="Passwords do no match" Font-Italic="True" ForeColor="Red"></asp:CompareValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>

                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" />

                            </td>
                            <td>

                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
    </div>
    </form>
</body>
</html>