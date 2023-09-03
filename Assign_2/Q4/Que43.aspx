<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" AutoEventWireup="true" CodeBehind="Que43.aspx.cs" Inherits="Assign_2.Q4.Que43" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Question 4 (Accordian)</title>

    <style>
        .Accordian-Header {
            background: black;
            color: white;
            padding:4px;
        }

        .Accordian-Header-Selected {
            background: black;
            color: white;
            font-size:1.5rem;
            padding:4px;
        }

        .Accordian-style {
            background: red;
            color: white;
            border-radius: 5px;
            transition: ease-in-out 0.2s;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Q43" class="bg-dark-subtle d-flex flex-column align-items-center justify-content-center" style="height: 88vh;">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="row w-100">
            <div class="col"></div>
            <div class="col-4 p-2 text-center">
                <h1 class="text-body-emphasis">Accordian <span class="fs-5 text-opacity-50 text-dark-emphasis">[Control]</span></h1>
            </div>
            <div class="col"></div>
        </div>

        <div class="row mt-3 text-center w-100">
            <div class="col"></div>

            <div class="col-5 p-3 border border-1 border-light rounded">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <ajaxToolkit:Accordion ID="Accordion1" runat="server" Font-Bold="False" CssClass="Accordian-style" HeaderCssClass="Accordian-Header" HeaderSelectedCssClass="Accordian-Header-Selected">
                            <Panes>
                                <ajaxToolkit:AccordionPane runat="server">
                                    <Header>Pane 1</Header>
                                    <Content>
                                        <p>I'm Content Of Pane 1</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, accusantium! Iste odio eum omnis consequatur ipsa maiores, nam quibusdam hic aut veniam sunt exercitationem ducimus architecto dolores ipsam laborum? Dignissimos quo explicabo quam optio soluta similique, iste voluptate inventore obcaecati facere, esse vero ex magni ut autem illum fugiat hic!</p>
                                    </Content>
                                </ajaxToolkit:AccordionPane>
                                <ajaxToolkit:AccordionPane runat="server">
                                    <Header>Pane 2</Header>
                                    <Content>
                                        <p>I'm Content Of Pane 2</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, accusantium! Iste odio eum omnis consequatur ipsa maiores, nam quibusdam hic aut veniam sunt exercitationem ducimus architecto dolores ipsam laborum? Dignissimos quo explicabo quam optio </p>
                                    </Content>
                                </ajaxToolkit:AccordionPane>
                                <ajaxToolkit:AccordionPane runat="server">
                                    <Header>Pane 3</Header>
                                    <Content>
                                        <p>I'm Content Of Pane 3</p>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, accusantium! Iste odio eum omnis consequatur ipsa maiores, nam quibusdam hic aut veniam sunt exercitationem ducimus architecto dolores ipsam laborum? Dignissimos quo explicabo quam optio </p>
                                    </Content>
                                </ajaxToolkit:AccordionPane>
                            </Panes>
                        </ajaxToolkit:Accordion>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

            <div class="col"></div>
        </div>
    </div>
</asp:Content>
