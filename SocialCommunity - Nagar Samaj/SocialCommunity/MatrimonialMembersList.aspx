<%@ Page Language="C#" MasterPageFile="~/mstClientPage.master" AutoEventWireup="true"
    CodeFile="MatrimonialMembersList.aspx.cs" Inherits="MembersList" Title="Nagar Bandhara Community | Members List" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="middle-cnt-full">
                <div class="abt_section-full">
                    <h1>
                        Registered List</h1>
                    <div id="content">
                        <table class="ErrorDesc" id="ErrorPart" runat="server">
                            <tr>
                                <td style="width: 20px;" id="ErrorImage" runat="server">
                                    <img src="../Images/error.png" alt="Error" />
                                </td>
                                <td id="tdError" runat="server" style="width: 100%;">
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td class="LabelBox">
                                    Select By
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSelect" CssClass="ComboBox" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="LabelBox">
                                    Search Text
                                </td>
                                <td>
                                    <asp:TextBox ID="tbSearch" CssClass="TextBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="CommandButton">
                                    <asp:ImageButton ID="imgbtnSearch" ImageUrl="~/images/warning.png" runat="server"
                                        OnClick="imgbtnSearch_Click" />
                                </td>
                            </tr>
                        </table>
                        <table class="ContentMain">
                            <tr>
                                <td colspan="2">
                                    <table width="100%" class="RadioBtnList">
                                        <asp:Repeater ID="rptData" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td colspan="3" class="tabletitle">
                                                        <%# DataBinder.Eval(Container.DataItem, "MemberName")%>
                                                        -
                                                        <%# DataBinder.Eval(Container.DataItem, "CountryName")%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="5">
                                                        <img class="thumbnails" src='<%# ThumbImage(Eval("MemberPhoto")) %>' alt="NO IMAGE" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>Date of Birth:</strong>
                                                        <%# DataBinder.Eval(Container.DataItem, "DOB")%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>Gotra:</strong>
                                                        <%# DataBinder.Eval(Container.DataItem, "Gotra")%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>Contact No:</strong>
                                                        <%# DataBinder.Eval(Container.DataItem, "ContactNo")%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <strong>Email ID:</strong>
                                                        <%# DataBinder.Eval(Container.DataItem, "EmailID")%>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <SeparatorTemplate>
                                                <tr>
                                                    <td colspan="3">
                                                        <span class="dashed-full"></span>
                                                    </td>
                                                </tr>
                                            </SeparatorTemplate>
                                        </asp:Repeater>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BottomContent" runat="Server">
</asp:Content>
