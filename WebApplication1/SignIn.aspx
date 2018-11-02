<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Theme="SignIn" Inherits="WebApplication1.WebForm1" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="BodyContent" ID="SignIn" runat="server">
    <div class="box" style="width:500px;">
        <div class="portions">
            Login ID<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="<br />Please enter the ID." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Password<br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="<br />Please enter the password." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Login"/>
        </div>
    </div>
    <div style="bottom:0px"></div>
</asp:Content>
