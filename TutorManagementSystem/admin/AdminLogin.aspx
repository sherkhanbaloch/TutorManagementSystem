<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TutorManagementSystem.admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>

    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />

    <%-- Sweet Alert 2 Files --%>
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" id="loginBox">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Login</h2>
                    </div>
                    <asp:TextBox ID="usernameTxt" placeholder="Enter User Name" CssClass="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Required." ControlToValidate="usernameTxt" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="passwordTxt" placeholder="Enter Password" CssClass="form-control" TextMode="Password" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required." ControlToValidate="passwordTxt" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnLogin" Text="Login" CssClass="btn btn-primary btn-block" runat="server" OnClick="btnLogin_Click" />
                    <br />
                </div>
            </div>
        </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
