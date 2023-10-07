<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="View_Contact.aspx.cs" Inherits="TutorManagementSystem.admin.View_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-white text-center">View Contact Details</h1>
        </div>
    </div>

    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-striped table-dark" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Bind("contactID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Subject">
                <ItemTemplate>
                    <asp:Label ID="lblSubject" runat="server" Text='<%# Bind("subject") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Message">
                <ItemTemplate>
                    <asp:Label ID="lblMessage" runat="server" Text='<%# Bind("message") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are you sure you want to delete Message?')" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn  btn-danger text-white" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
