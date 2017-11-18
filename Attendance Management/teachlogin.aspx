<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teachlogin.aspx.cs" Inherits="teachlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body background="bg.jpg">
    <form id="form1" runat="server">
        <div align="right">
            <table >
            <tr>
                <td>
                    
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow" Text="Hello"></asp:Label>

                </td>
                <td><asp:Label ID="L6" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Date:" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="X-Large" OnClick="Button1_Click" Text="Logout" />
                    </td>
                </tr>
            </table>
            </div>
            <div align="center">
            <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="false" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Size="Large">
           <Columns>
               <asp:TemplateField HeaderText="Roll No" HeaderStyle-ForeColor="Red">
                   <ItemTemplate>
                       <asp:Label ID="lblRollNo" runat="server" Text='<%#Eval("Sid") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Student Name" HeaderStyle-ForeColor="Red">
                   <ItemTemplate>
                       <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="Attendence" HeaderStyle-ForeColor="Red">
                   <ItemTemplate>
                       <asp:CheckBox ID="chkAttendence" runat="server" />
                   </ItemTemplate>
               </asp:TemplateField>
           </Columns>
       </asp:GridView>
        <br />
       <asp:Button ID="btnSave" runat="server" Text="Submit" OnClick="SaveStudentAttendance" Font-Bold="True" />
        </div>
    </form>
</body>
</html>