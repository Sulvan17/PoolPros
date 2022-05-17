<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDeleteAccount.aspx.cs" Inherits="WebApplication1.UserDeleteAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Your account is about to be deleted and cannot be reversed! Are you sure you want to delete your account?"></asp:Label>
            
        </div>
        <div>
            <asp:Button class="btn btn-primary btn-lg px-4 me-sm-3" ID="btnDelte" runat="server" Text="Delete Account" />
            <asp:Button class="btn btn-primary btn-lg px-4 me-sm-3" ID="btnBack" runat="server" Text="Back To Homepage" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
