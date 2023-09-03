<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que3.aspx.cs" Inherits="Assign_2.Q3.Que3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 3</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Q3" class=" bg-dark-subtle" >
        <div class="row align-items-center justify-content-center" >
            <div class="col"></div>
            <div class="col-4 p-4">
                <div class="row g-2 align-items-center p-4 border border-1 border-black rounded-3">

                    <div class="col-12">
                        <div class="col-auto text-center">
                            <label  class="col-form-label fs-3 fw-bold">Bank Account Form</label>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Account No.: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbACNo" runat="server" CssClass="form-control w-custom" TextMode="Number" placeholder="000000"></asp:TextBox>
                            <asp:RangeValidator ID="RangevalidateACNo" runat="server" ErrorMessage="Account Number Should Be 5 Digits...!!!" ControlToValidate="tbACNo" MinimumValue="10000" Type="Integer" CssClass="form-text ps-1" MaximumValue="99999" ForeColor="Red">*</asp:RangeValidator>
                            <asp:RequiredFieldValidator ID="RequireValidateACNo" runat="server" ControlToValidate="tbACNo" ErrorMessage="Account Number Is Required...!!!" CssClass="form-text" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Account Holder Name: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbName" runat="server" CssClass="form-control w-custom" placeholder="John Doe"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ExprValidaorName" runat="server" ControlToValidate="tbName" ErrorMessage="Name Can't Contain Numbers...!!!" CssClass="ps-1" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red">*</asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequireValidateName" runat="server" ControlToValidate="tbName" ErrorMessage="Name Is Required...!!!" CssClass="form-text" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Date Of First Visit: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbVisit" runat="server" CssClass="form-control w-custom" TextMode="Date"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidateVisit" runat="server" ErrorMessage="Date Must Be Within 5 Days...!!!" ControlToValidate="tbVisit" ForeColor="#FF3300" Type="Date" CssClass="ps-1">*</asp:RangeValidator>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Account Type: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:DropDownList ID="dropdownType" runat="server" CssClass="form-select w-custom">
                                <asp:ListItem>Savings</asp:ListItem>
                                <asp:ListItem>Current</asp:ListItem>
                                <asp:ListItem Selected="True">Jandhan</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Opening Balance: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbBalance" runat="server" TextMode="Number" CssClass="form-control w-custom"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequireBalance" runat="server" ErrorMessage="Balance is Required...!!! " ControlToValidate="tbBalance" ForeColor="#ff3300" CssClass="ps-1">*</asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="ValidateBalance" runat="server" ErrorMessage="Invalid Opening Balance...!!!" ControlToValidate="tbBalance" ForeColor="#ff3300" OnServerValidate="ValidateBalance_ServerValidate" >*</asp:CustomValidator>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Password: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbPass" runat="server" CssClass="form-control w-custom" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequireValidatePass" runat="server" ControlToValidate="tbPass" ErrorMessage="Password Is Required...!!!" CssClass="form-text ps-1" ForeColor="Red" >*</asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="col-auto">
                            <label  class="col-form-label">Confirm Password: </label>
                        </div>
                        <div class="col-auto d-flex">
                            <asp:TextBox ID="tbPassRe" runat="server" CssClass="form-control w-custom" TextMode="Password" placeholder="Re-enter Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequireValidateRePass" runat="server" ControlToValidate="tbPassRe" ErrorMessage="Confirm Password Is Required...!!!" CssClass="form-text ps-1" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatePass" runat="server" ErrorMessage="Both Pass Must Be Same...!!!" ControlToCompare="tbPass" ControlToValidate="tbPassRe" ForeColor="#FF3300">*</asp:CompareValidator>
                        </div>
                    </div>

                    <div>
                        <asp:ValidationSummary ID="validateSummary" runat="server" CssClass="form-text alert-danger text-danger" />
                    </div>
                    <div>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-outline-dark w-100" OnClick="btnRegister_Click" />
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div> 
</asp:Content>
