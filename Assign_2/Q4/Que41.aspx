<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que41.aspx.cs" Inherits="Assign_2.Q4.Q41" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 4 (Password Strength)</title>
    <link rel="icon" type="image/x-icon" href="../Assets/Images/favicon.ico" />
    <link href="../App_Themes/bootstrap.min.css" rel="stylesheet" />
    <link href="../App_Themes/Styles.css" rel="stylesheet" />
    <script src="../App_Themes/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Q41" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row w-100">
            <div class="col"></div>
            <div class="col-4 p-2 text-center">
                <h1 class="text-body-emphasis">Password Strength <span class="fs-5 text-opacity-50 text-dark-emphasis">[Extender]</span></h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row mt-3 text-center w-100">
            <div class="col"></div>
            <div class="col-5 p-3 border border-1 border-light rounded">
                <div class="row g-3 align-items-center justify-content-center">
                    <div class="col-auto">
                        <label class="col-form-label">Password: </label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="tbPWD" runat="server" CssClass="form-control" TextMode="Password" />
                        <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="tbPWD" MinimumLowerCaseCharacters="3" MinimumNumericCharacters="3" MinimumSymbolCharacters="3" MinimumUpperCaseCharacters="3" PreferredPasswordLength="12" HelpStatusLabelID="pwdHelper" RequiresUpperAndLowerCaseCharacters="True" HelpHandleCssClass="bg-danger" TextCssClass="bg-warning-subtle p-2 rounded text-danger" DisplayPosition="RightSide" HelpHandlePosition="AboveRight" StrengthIndicatorType="Text" />
                    </div>
                </div>
                <div class="row g-3 align-items-center justify-content-center">
                    <div class="col-12">
                        <asp:Label ID="pwdHelper" runat="server" CssClass="form-text" Text=""></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col"></div>
        </div>

    </div>
</asp:Content>
