<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" Theme="Home" MasterPageFile="~/Site.Master" %>
<%@ MasterType VirtualPath="~/Site.Master"%>
<asp:Content ContentPlaceHolderID="BodyContent" ID="Home" runat="server">
    <div class="box">
        <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Large"></asp:Label>
        <asp:GridView ID="GridView1" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="QuestionId" HeaderText="Question ID" InsertVisible="False" ReadOnly="True" SortExpression="QuestionId" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Choice1" HeaderText="Choice 1" SortExpression="Choice1" />
                <asp:BoundField DataField="Choice2" HeaderText="Choice 2" SortExpression="Choice2" />
                <asp:BoundField DataField="Choice3" HeaderText="Choice 3" SortExpression="Choice3" />
                <asp:BoundField DataField="Choice4" HeaderText="Choice 4" SortExpression="Choice4" />
                <asp:BoundField DataField="CorrectAns" HeaderText="Correct Answer" SortExpression="CorrectAns" />
                <asp:BoundField DataField="Marks" HeaderText="Maximum Marks" SortExpression="Marks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT Lab ProjectConnectionString %>" SelectCommand="SELECT [QuestionId], [Question], [Choice1], [Choice2], [Choice3], [Choice4], [CorrectAns], [Marks] FROM [Questions] WHERE ([ProfessorId] = @ProfessorId)">
            <SelectParameters>
                <asp:CookieParameter CookieName="UserId" Name="ProfessorId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
