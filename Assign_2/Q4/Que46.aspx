<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que46.aspx.cs" Inherits="Assign_2.Q4.Que46" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>Question 4 (Calender)</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div id="Q45" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">

                <div class="row w-100">
                    <div class="col"></div>
                    <div class="col-4 p-2 text-center">
                        <h1 class="text-body-emphasis">Calender <span class="fs-5 text-opacity-50 text-dark-emphasis">[Extender]</span></h1>
                    </div>
                    <div class="col"></div>
                </div>


                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col p-3 border border-1 border-light rounded">

                        <asp:TextBox ID="tbDatePicker" runat="server" OnTextChanged="tbDatePicker_TextChanged" CssClass="text-center rounded p-1" AutoPostBack="True"></asp:TextBox>

                        <ajaxToolkit:CalendarExtender ID="tbDatePicker_CalendarExtender" runat="server" BehaviorID="tbDatePicker_CalendarExtender" Format="dd MMM, yyyy" TargetControlID="tbDatePicker" />

                    </div>

                    <div class="col"></div>
                </div>
                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col-5">

                        <asp:Label ID="lblHelp" runat="server" Visible="false" Text="" CssClass="alert alert-success mt-3 w-100"></asp:Label>

                    </div>

                    <div class="col"></div>
                </div>
            </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
