<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que44.aspx.cs" Inherits="Assign_2.Q4.Que44" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 4 (Combo Box)</title>
    <style>
        .cb-default #ContentPlaceHolder1_ComboBox1_ComboBox1_Button {
            vertical-align: middle;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            padding: 3px;
        }

        .cb-default #ContentPlaceHolder1_ComboBox1_ComboBox1_TextBox {
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            padding: 3px;
        }

        .cb-default-item {
            background: yellow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="Q43" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">

                <div class="row w-100">
                    <div class="col"></div>
                    <div class="col-4 p-2 text-center">
                        <h1 class="text-body-emphasis">Combo Box <span class="fs-5 text-opacity-50 text-dark-emphasis">[Control]</span></h1>
                    </div>
                    <div class="col"></div>
                </div>


                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col-5 p-3 border border-1 border-light rounded">

                        <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" CssClass="cb-default" ListItemHoverCssClass="cb-default-item" AutoCompleteMode="Append" AutoPostBack="True" OnSelectedIndexChanged="ComboBox1_SelectedIndexChanged" DropDownStyle="DropDownList" EnableTheming="True"></ajaxToolkit:ComboBox>

                    </div>

                    <div class="col"></div>
                </div>
                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col-5 p-3 border border-1 border-light rounded">

                        <asp:Label ID="lblHelp" runat="server" Text=""></asp:Label>

                    </div>

                    <div class="col"></div>
                </div>
            </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
