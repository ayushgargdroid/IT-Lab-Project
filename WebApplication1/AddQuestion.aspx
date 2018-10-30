<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="WebApplication1.Default" MasterPageFile="~/Site.Master" Theme="AddQuestion" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="portions">
    Enter the Question<br />
    <asp:TextBox ID="TextBox1" runat="server" SkinID="Question"></asp:TextBox>
</div>
<div class="portions">
    Enter the 4 choices<br />
    1. <asp:TextBox ID="TextBox2" runat="server" CssClass="items"></asp:TextBox><br />
    2. <asp:TextBox ID="TextBox3" runat="server" CssClass="items"></asp:TextBox><br />
    3. <asp:TextBox ID="TextBox4" runat="server" CssClass="items"></asp:TextBox><br />
    4. <asp:TextBox ID="TextBox5" runat="server" CssClass="items"></asp:TextBox><br />
</div>
<div class="portions">
    Choose the correct answer<br />
    <asp:RadioButtonList runat="server" ID="RadioButtonList1" TextAlign="Right" Width="100%">
        <asp:ListItem Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem Value="4"></asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator ID="CorrectAns" ControlToValidate="TextBox1" ErrorMessage="Please select the correct answer." runat="server" InitialValue="Please select the correct answer."></asp:RequiredFieldValidator>
    <br />
</div>
<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
<br />
</asp:Content>
