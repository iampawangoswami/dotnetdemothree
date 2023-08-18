<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Webform.aspx.cs" Inherits="AUTOIDGENERATE.Webform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        width: 100%;
        height: 99px;
    }
    .auto-style4 {
        height: 32px;
    }
        .auto-style5 {
            background-color: #999966;
        }
        .auto-style6 {
            height: 32px;
            background-color: #999966;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br class="auto-style5" />
    <table class="auto-style3">
        <tr>
            <td class="auto-style5">Roll Number</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Class</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="insert" CssClass="auto-style5" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>
