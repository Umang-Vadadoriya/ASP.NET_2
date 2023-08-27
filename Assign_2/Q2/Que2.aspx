<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que2.aspx.cs" Inherits="Assign_2.Q2.Que2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 2</title>
    <link rel="icon" type="image/x-icon" href="../Assets/Images/favicon.ico" />
    <link href="../App_Themes/bootstrap.min.css" rel="stylesheet" />
    <link href="../App_Themes/Styles.css" rel="stylesheet" />
    <script src="../App_Themes/bootstrap.bundle.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row align-items-center justify-content-center bg-dark-subtle" id="Q2" style="height:90vh";>
        <div class="col"></div>
        <div class="col-3 text-center">
            <div class="row align-items-center justify-content-center p-2 border border-1 border-black rounded-top-3 ">
                <table class="text-center p-5">
                    <tr>
                        <td>Roll No:</td>
                        <td>
                            <asp:TextBox ID="tBRollNo" runat="server" TextMode="Number"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="tBName" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Course:</td>
                        <td>
                            <asp:TextBox ID="tBCourse" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn btn-outline-dark w-custom"/>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:Panel ID="Panel1" runat="server" CssClass="text-center row align-items-center justify-content-center">
            </asp:Panel>

        </div>
        <div class="col"></div>
    </div>

</asp:Content>
