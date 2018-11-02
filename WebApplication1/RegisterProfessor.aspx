<%@ Page Language="C#" Theme="RegisterProfessor" AutoEventWireup="true" CodeBehind="RegisterProfessor.aspx.cs" Inherits="WebApplication1.RegisterProfessor" MasterPageFile="~/Site.Master" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="BodyContent" ID="RegisterProfessor" runat="server">
    <div class="box">
        <h1>Register Faculty</h1>
        <div class="portions">
            Faculty ID<br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="<br />Please enter the ID." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Faculty Name<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="<br />Please enter the name." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Subject<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox3" ErrorMessage="<br />Please enter the subject." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Login Password<br />
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="items"></asp:TextBox><br />
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" CssClass="items"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="TextBox4" ControlToCompare="TextBox5" Display="Dynamic" ErrorMessage="<br />Passwords do not match." runat="server" CssClass="error-msg"></asp:CompareValidator>
            <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox4" ErrorMessage="<br />Please enter the password." runat="server" CssClass="error-msg"></asp:RequiredFieldValidator>
        </div>
        <div class="portions">
            Designation<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="Faculty In-Charge">Faculty In-Charge</asp:ListItem>
                <asp:ListItem Value="Faculty" Selected="True">Faculty</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="portions">
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"/>
        </div>
    </div>
</asp:Content>