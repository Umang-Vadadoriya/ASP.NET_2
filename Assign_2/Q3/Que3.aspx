<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que3.aspx.cs" Inherits="Assign_2.Q3.Que3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 3</title>
    <link rel="icon" type="image/x-icon" href="../Assets/Images/favicon.ico" />
    <link href="../App_Themes/bootstrap.min.css" rel="stylesheet" />
    <link href="../App_Themes/Styles.css" rel="stylesheet" />
    <script src="../App_Themes/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Q3">
        <div class="row align-items-center justify-content-center" style="height: 90vh;">
            <div class="col-4">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Account No.</label>
                    </div>
                    <div class="col-auto d-flex">
                        <asp:TextBox ID="tbACNo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <asp:RangeValidator ID="RangevalidateACNo" runat="server" ErrorMessage="Account Number Should Be Atleast 5 Digits." ControlToValidate="tbACNo" MinimumValue="10000" Type="Integer" CssClass="form-text" MaximumValue="99999" ForeColor="Red">*</asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequirevalidateACNo" runat="server" ControlToValidate="tbACNo" ErrorMessage="Account Number Is Required" CssClass="form-text" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:ValidationSummary ID="validateSummary" runat="server" CssClass="form-text alert-danger text-danger" />
                    </div>
                    <div>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
