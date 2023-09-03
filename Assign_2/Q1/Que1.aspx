<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que1.aspx.cs" Inherits="Assign_2.Q1.Que1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 1</title>
    <link rel="icon" type="image/x-icon" href="../Assets/Images/favicon.ico" />
    <link href="../App_Themes/bootstrap.min.css" rel="stylesheet" />
    <script src="../App_Themes/bootstrap.bundle.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Q1" class="container-fluid bg-dark-subtle">
        <div class="row align-items-center justify-content-center" style="height: 88vh;">
            <div class="col"></div>
            <div class="col-4">
                <div class="d-flex flex-column text-center align-items-center justify-content-center">
                    <asp:FileUpload ID="fileUp" runat="server" AllowMultiple="True" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-outline-dark mt-2" OnClick="btnUpload_Click" />
                    <asp:Label ID="lblOutput" runat="server" Text="" CssClass=""></asp:Label>
                </div>
            </div>
            <div class="col">
            </div>
        </div>
    </div>
</asp:Content>
