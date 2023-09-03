<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que42.aspx.cs" Inherits="Assign_2.Q4.Q42" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 4 (Rating)</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Q41" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row w-100">
            <div class="col"></div>
            <div class="col-4 p-2 text-center">
                <h1 class="text-body-emphasis">Rating <span class="fs-5 text-opacity-50 text-dark-emphasis">[Control]</span></h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row mt-3 text-center w-100">
            <div class="col"></div>

            <div class="col-5 p-3 border border-1 border-light rounded">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="row g-3 align-items-center justify-content-center">
                            <div class="col d-flex justify-content-end">
                                <ajaxToolkit:Rating ID="Rating1" runat="server" AutoPostBack="True" StarCssClass="empty-star" FilledStarCssClass="filled-star" EmptyStarCssClass="empty-star" WaitingStarCssClass="filled-star" OnClick="Rating1_Click"></ajaxToolkit:Rating>
                            </div>
                            <div class="col d-flex align-items-start justify-content-start">
                                <asp:Label ID="lblRating" runat="server" Text="" Visible="False"></asp:Label>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div class="col"></div>
        </div>

    </div>

</asp:Content>

