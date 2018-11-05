<%@ Page Language="C#" AutoEventWireup="true" Theme="Paper" CodeBehind="Paper.aspx.cs" Inherits="WebApplication1.Paper" MasterPageFile="~/Site.Master" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="BodyContent" ID="Paper" runat="server">
    <div class="box">
        <div class="portions">
            Subject:<br />
            <asp:ListBox runat="server" ID="ListBox1" AutoPostBack="true"></asp:ListBox>
        </div>
        <div class="portions">    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="QuestionId">
            <Columns>
                <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" InsertVisible="False" ReadOnly="True" SortExpression="QuestionId" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Choice1" HeaderText="Choice1" SortExpression="Choice1" />
                <asp:BoundField DataField="Choice2" HeaderText="Choice2" SortExpression="Choice2" />
                <asp:BoundField DataField="Choice3" HeaderText="Choice3" SortExpression="Choice3" />
                <asp:BoundField DataField="Choice4" HeaderText="Choice4" SortExpression="Choice4" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT Lab ProjectConnectionString %>" SelectCommand="SELECT Questions.QuestionId, Questions.Question, Questions.Choice1, Questions.Choice2, Questions.Choice3, Questions.Choice4, Questions.Marks, Professors.Subject FROM Questions INNER JOIN Professors ON Questions.ProfessorId = Professors.ProfessorID WHERE (Questions.Selected = 'true') AND (Professors.Subject = @subj)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBox1" Name="subj" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>