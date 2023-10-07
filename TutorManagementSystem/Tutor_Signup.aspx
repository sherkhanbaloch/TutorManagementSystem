<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TutorManagementSystem.Tutor_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" id="signupform">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron bg-primary text-white text-center">Tutor Sign Up</h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">

                <asp:textbox id="nameTxt" cssclass="form-control" placeholder="Enter Name" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="nameTxt" errormessage="Name Required" id="RequiredFieldValidator1" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="surnameTxt" cssclass="form-control" placeholder="Enter Surname" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="surNameTxt" errormessage="Surname Required" id="RequiredFieldValidator3" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:dropdownlist id="genderDDL" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="genderDDL" errormessage="Gender Required" initialvalue="Select Gender" id="RequiredFieldValidator4" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="ageTxt" cssclass="form-control" placeholder="Enter Age" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="ageTxt" errormessage="Age Required" id="RequiredFieldValidator5" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <asp:rangevalidator id="RangeValidator1" runat="server" errormessage="Age Should Be 20 To 80" controltovalidate="ageTxt" maximumvalue="80" minimumvalue="20" setfocusonerror="True" type="Integer" display="Dynamic" forecolor="Red"></asp:rangevalidator>
                <br />

                <asp:textbox id="emailTxt" cssclass="form-control" placeholder="Enter Email" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="emailTxt" errormessage="Email Required" id="RequiredFieldValidator2" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" errormessage="Invalid Email" display="Dynamic" controltovalidate="emailTxt" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" setfocusonerror="True" forecolor="Red"></asp:regularexpressionvalidator>
                <br />

                <asp:dropdownlist id="maritalDDL" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Separated</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="maritalDDL" errormessage="Marital Status Required" initialvalue="Select Marital Status" id="RequiredFieldValidator18" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

            </div>

            <div class="col-md-4">
                <asp:dropdownlist id="countryDDL" cssclass="form-control" runat="server" autopostback="True" OnSelectedIndexChanged="countryDDL_SelectedIndexChanged"></asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="countryDDL" initialvalue="Select Country" errormessage="Country Required" id="RequiredFieldValidator6" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />
                <asp:dropdownlist id="cityDDL" cssclass="form-control" runat="server"></asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="cityDDL" errormessage="City Required" id="RequiredFieldValidator7" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="addressTxt" cssclass="form-control" placeholder="Enter Address" textmode="MultiLine" rows="6" columns="20" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="addressTxt" errormessage="Address Required" id="RequiredFieldValidator8" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:dropdownlist id="qualificationDDL" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Bachelor</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>M Phil</asp:ListItem>
                    <asp:ListItem>PhD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="qualificationDDL" errormessage="Qualification Required" initialvalue="Select Qualification" id="RequiredFieldValidator10" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />
            </div>

            <div class="col-md-4">
                <asp:textbox id="degreeTxt" cssclass="form-control" placeholder="Enter Degree" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="degreeTxt" errormessage="Degree Required" id="RequiredFieldValidator9" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:dropdownlist id="experienceDDL" cssclass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Year</asp:ListItem>
                    <asp:ListItem>3 Year</asp:ListItem>
                    <asp:ListItem>4 Year</asp:ListItem>
                    <asp:ListItem>5+ Year</asp:ListItem>
                    <asp:ListItem>8+ Year</asp:ListItem>  
                    <asp:ListItem>10+ Year</asp:ListItem>
                </asp:dropdownlist>
                <asp:requiredfieldvalidator controltovalidate="experienceDDL" errormessage="Experience Required" initialvalue="Select Experience" id="RequiredFieldValidator11" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="contactTxt" cssclass="form-control" placeholder="Enter Contact" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="contactTxt" errormessage="Contact Required" id="RequiredFieldValidator12" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="usernameTxt" cssclass="form-control" placeholder="Enter User Name" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="usernameTxt" errormessage="User Name Required" id="RequiredFieldValidator15" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <br />

                <asp:textbox id="passwordTxt" cssclass="form-control" placeholder="Enter Password" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="passwordTxt" errormessage="Password Required" id="RequiredFieldValidator16" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" errormessage="Enter Strong Password" display="Dynamic" controltovalidate="passwordTxt" validationexpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" setfocusonerror="True" forecolor="Red"></asp:regularexpressionvalidator>
                <br />

                <asp:textbox id="confirmpasswordTxt" cssclass="form-control" placeholder="Confirm Password" runat="server"> </asp:textbox>
                <asp:requiredfieldvalidator controltovalidate="confirmpasswordTxt" errormessage="Confirm Password Required" id="RequiredFieldValidator17" runat="server" display="Dynamic" setfocusonerror="True" forecolor="Red"></asp:requiredfieldvalidator>
                <asp:comparevalidator id="CompareValidator1" runat="server" display="Dynamic" controltovalidate="confirmpasswordTxt" controltocompare="passwordTxt" errormessage="Password Must Be Same." setfocusonerror="true" forecolor="Red"></asp:comparevalidator>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:button id="btnTutorSignup" runat="server" text="Sign Up" cssclass="btn btn-primary btn-block" OnClick="btnTutorSignup_Click" />
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
