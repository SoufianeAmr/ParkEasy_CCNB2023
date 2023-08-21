<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

            .textbox {
        display: block;
        width: 50%;
        height: 100px;
        padding: 8px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 4px;
        transition: border-color 0.3s ease;
    }

    .textbox:focus {
        outline: none;
        border-color: #4CAF50;
        box-shadow: 0 0 5px #4CAF50;
    }
        .custom-button {
        font-family: gadugi;
        font-size: large;
        height: 35px;
        width: 20%;
        background-color: #4CAF50;
        color: #ffffff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .custom-button:hover {
        background-color: #45a049;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
         <td align="center" style="width: 80%; background-color: #CCCCCC;">
                    <asp:Label ID="Label8" runat="server" style="font-family: gadugi; font-size: xx-large" Text="Ecrire a nous"></asp:Label>
                </td>
             </tr>
        <tr>
            <td>
                <asp:Label ID="LabelSid" runat="server" Visible="False"></asp:Label>
                <br />
&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
<asp:TextBox ID="TextBox1" Required="" Placeholder="Votre Message......" runat="server" CssClass="textbox"></asp:TextBox>
                <br />
                <br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="custom-button" Text="Envoyer" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

