<%@ Page Language="C#" AutoEventWireup="true" Theme="SetPaper" CodeBehind="SetPaper.aspx.cs" Inherits="WebApplication1.SetPaper" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="BodyContent" ID="SetPaper" runat="server">
    <div class="box">
        <asp:GridView ID="GridView1" OnRowUpdating="GridView1_RowUpdating" HorizontalAlign="Center" runat="server" AutoGenerateColumns="False" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" InsertVisible="False" ReadOnly="True" SortExpression="QuestionId" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" ReadOnly="True"/>
                <asp:BoundField DataField="Choice1" HeaderText="Choice1" SortExpression="Choice1" ReadOnly="True"/>
                <asp:BoundField DataField="Choice2" HeaderText="Choice2" SortExpression="Choice2" ReadOnly="True"/>
                <asp:BoundField DataField="Choice3" HeaderText="Choice3" SortExpression="Choice3" ReadOnly="True"/>
                <asp:BoundField DataField="Choice4" HeaderText="Choice4" SortExpression="Choice4" ReadOnly="True"/>
                <asp:BoundField DataField="CorrectAns" HeaderText="CorrectAns" SortExpression="CorrectAns" ReadOnly="True"/>
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" ReadOnly="True"/>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True"/>
                <asp:CheckBoxField DataField="Selected" HeaderText="Selected" SortExpression="Selected"/>
                <asp:CommandField ShowEditButton="true" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT Lab ProjectConnectionString %>" SelectCommand="SELECT Questions.QuestionId, Questions.Question, Questions.Choice1, Questions.Choice2, Questions.Choice3, Questions.Choice4, Questions.CorrectAns, Questions.Marks, Professors.Name, Questions.Selected FROM Questions INNER JOIN Professors ON Questions.ProfessorId = Professors.ProfessorID WHERE Professors.Subject=@Subject">
            <SelectParameters>
                <asp:CookieParameter CookieName="UserSubject" Name="Subject" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
