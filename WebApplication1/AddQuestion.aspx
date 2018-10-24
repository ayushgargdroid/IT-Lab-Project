<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="WebApplication1.Default" MasterPageFile="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">
<div class="row">
    <div class="col-sm-12 text-center">
        <span class="text-center text-dark">
            Enter the Question
        </span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
</div>   
<div class="row">
    <div class="col-sm-12 text-center">
        <span class="text-center text-dark">
            Enter the number of options for the Question
        </span>
        <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
    </div>
</div> 
</asp:Content>
