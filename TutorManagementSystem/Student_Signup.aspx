<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TutorManagementSystem.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="admin/css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" id="signupform">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron bg-primary text-white text-center">Student Sign Up</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">

                <asp:TextBox ID="nameTxt" CssClass="form-control" placeholder="Enter Name" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="nameTxt" ErrorMessage="Name Required" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="fathernameTxt" CssClass="form-control" placeholder="Enter Father Name" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="fatherNameTxt" ErrorMessage="Father Name Required" ID="RequiredFieldValidator2" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="surnameTxt" CssClass="form-control" placeholder="Enter Surname" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="surNameTxt" ErrorMessage="Surname Required" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="genderDDL" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="genderDDL" ErrorMessage="Gender Required" InitialValue="Select Gender" ID="RequiredFieldValidator4" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="ageTxt" CssClass="form-control" placeholder="Enter Age" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ageTxt" ErrorMessage="Age Required" ID="RequiredFieldValidator5" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should Be 5 To 60" ControlToValidate="ageTxt" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                <br />

                <asp:DropDownList ID="countryDDL" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="countryDDL_SelectedIndexChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="countryDDL" InitialValue="Select Country" ErrorMessage="Country Required" ID="RequiredFieldValidator6" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </div>

            <div class="col-md-4">
                <asp:DropDownList ID="cityDDL" CssClass="form-control" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="cityDDL" InitialValue="Select City" ErrorMessage="City Required" ID="RequiredFieldValidator7" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="addressTxt" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" Rows="4" Columns="20" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="addressTxt" ErrorMessage="Address Required" ID="RequiredFieldValidator8" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="classTxt" CssClass="form-control" placeholder="Enter Class" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="classTxt" ErrorMessage="Class Required" ID="RequiredFieldValidator9" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="goingToDDL" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>University</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="goingToDDL" ErrorMessage="Going To Required" InitialValue="Select Going To" ID="RequiredFieldValidator10" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="subjectTxt" CssClass="form-control" placeholder="Enter Subject" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="subjectTxt" ErrorMessage="Subject Required" ID="RequiredFieldValidator11" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </div>

            <div class="col-md-4">
                <asp:TextBox ID="contactTxt" CssClass="form-control" placeholder="Enter Contact" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="contactTxt" ErrorMessage="Contact Required" ID="RequiredFieldValidator12" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="tuitiontypeDDL" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tuition Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="tuitiontypeDDL" ErrorMessage="Tuition Type Required" InitialValue="Select Tuition Type" ID="RequiredFieldValidator13" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:DropDownList ID="tutorperferDDL" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tutor Perfered</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>M. Phil</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="tutorperferDDL" ErrorMessage="Tutor Perfered Required" InitialValue="Select Tutor Perfered" ID="RequiredFieldValidator14" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="usernameTxt" CssClass="form-control" placeholder="Enter User Name" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="usernameTxt" ErrorMessage="User Name Required" ID="RequiredFieldValidator15" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="passwordTxt" CssClass="form-control" placeholder="Enter Password" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="passwordTxt" ErrorMessage="Password Required" ID="RequiredFieldValidator16" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Strong Password" Display="Dynamic" ControlToValidate="passwordTxt" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" SetFocusOnError="True" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <asp:TextBox ID="confirmpasswordTxt" CssClass="form-control" placeholder="Confirm Password" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="confirmpasswordTxt" ErrorMessage="Confirm Password Required" ID="RequiredFieldValidator17" runat="server" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="confirmpasswordTxt" ControlToCompare="passwordTxt" ErrorMessage="Password Must Be Same." SetFocusOnError="true" ForeColor="Red"></asp:CompareValidator>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="btnStudentSignup" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block" OnClick="btnStudentSignup_Click" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center">
                <a href="Student_Signup.aspx" class="btn btn-success">Sign Up as Student</a>
                <a href="Tutor_Signup.aspx" class="btn btn-info">Sign Up as Tutor</a>
            </div>
        </div>
        <br />
    </div>
    <br />

</asp:Content>
