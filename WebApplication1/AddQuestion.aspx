<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuestion.aspx.cs" Inherits="WebApplication1.Default" MasterPageFile="~/Site.Master" Theme="AddQuestion" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="box"  style="width:60%;">
        <h1>Add Questions</h1>
        <div class="portions">
            Enter the Question<br />
            <asp:TextBox ID="TextBox1" runat="server" SkinID="Question"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="<br />Please enter the question." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Enter the 4 choices<br />
            1. <asp:TextBox ID="TextBox2" runat="server" CssClass="items"></asp:TextBox><br /><asp:RequiredFieldValidator ControlToValidate="TextBox2" ErrorMessage="Please enter the first choice.<br />" runat="server" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            2. <asp:TextBox ID="TextBox3" runat="server" CssClass="items"></asp:TextBox><br /><asp:RequiredFieldValidator ControlToValidate="TextBox3" ErrorMessage="Please enter the second choice.<br />" runat="server" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            3. <asp:TextBox ID="TextBox4" runat="server" CssClass="items"></asp:TextBox><br /><asp:RequiredFieldValidator ControlToValidate="TextBox4" ErrorMessage="Please enter the third choice.<br />" runat="server" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            4. <asp:TextBox ID="TextBox5" runat="server" CssClass="items"></asp:TextBox><br /><asp:RequiredFieldValidator ControlToValidate="TextBox5" ErrorMessage="Please enter the fourth choice.<br />" runat="server" CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Choose the correct answer<br />
            <asp:RadioButtonList runat="server" ID="RadioButtonList1" TextAlign="Right" Width="100%">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem Value="4"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ControlToValidate="RadioButtonList1" ErrorMessage="<br/>Please select the correct answer." Display="Dynamic" runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Enter the maximum marks for the question<br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TextBox6" ErrorMessage="<br/>Enter the maximum marks." Display="Dynamic" runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
            <asp:RangeValidator ControlToValidate="TextBox6" MaximumValue="50" MinimumValue="0" Type="Integer" ErrorMessage="<br/>Enter the marks between 0 and 50." Display="Dynamic" runat="server" CssClass="error-msg"></asp:RangeValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"/>
        <br />
    </div>
</asp:Content>
