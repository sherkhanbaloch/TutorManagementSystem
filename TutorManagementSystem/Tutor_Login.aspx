<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="TutorManagementSystem.Tutor_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" id="loginBox">
                <br />
                <div class="jumbotron text-center text-white bg-primary">
                    <h2>Tutor Login</h2>
                </div>
                <asp:TextBox ID="usernameTxt" placeholder="Enter User Name" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Required." ControlToValidate="usernameTxt" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="passwordTxt" placeholder="Enter Password" CssClass="form-control" TextMode="Password" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required." ControlToValidate="passwordTxt" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="TutorbtnLogin" Text="Login" CssClass="btn btn-primary btn-block" runat="server" OnClick="TutorbtnLogin_Click" />
                <br />
                <div class="text-center">
                    <a href="Student_Login.aspx">Login As Student</a>
                </div>
                <br />
            </div>
        </div>
    </div>
    <br />
</asp:Content>
