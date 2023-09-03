<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que45.aspx.cs" Inherits="Assign_2.Q4.Que45" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 4 (Confirm Button)</title>
    
    <script type="text/javascript">
        function confirm_cancel() {
            document.getElementById('ContentPlaceHolder1_lblHelp').parentElement.innerHTML = null;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div id="Q45" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">

                <div class="row w-100">
                    <div class="col"></div>
                    <div class="col-4 p-2 text-center">
                        <h1 class="text-body-emphasis">Confirm Button <span class="fs-5 text-opacity-50 text-dark-emphasis">[Extender]</span></h1>
                    </div>
                    <div class="col"></div>
                </div>


                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col p-3 border border-1 border-light rounded">

                        <asp:Button ID="btnDestroy" runat="server" Text="Destroy" CssClass="btn btn-danger" OnClick="btnDestroy_Click" />
                        <ajaxToolkit:ConfirmButtonExtender ID="btnDestroy_ConfirmButtonExtender" runat="server" BehaviorID="btnDestroy_ConfirmButtonExtender" ConfirmText="Sure About Destruction..??" TargetControlID="btnDestroy" OnClientCancel="confirm_cancel" />

                    </div>

                    <div class="col"></div>
                </div>
                <div class="row mt-3 text-center w-100">
                    <div class="col"></div>

                    <div class="col-5">

                        <asp:Label ID="lblHelp" runat="server" Visible="false" Text="I Warn You Don't Destroy...!!!" CssClass="alert alert-danger w-100"></asp:Label>

                    </div>

                    <div class="col"></div>
                </div>
            </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
