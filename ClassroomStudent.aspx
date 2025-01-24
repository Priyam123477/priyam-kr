<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassroomStudent.aspx.cs" Inherits="ClassroomStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      .body {
		background-color:rgba(300,80,0,0.3);
		opacity: 0.9;
		border-radius: 10px;
		height=240px;
    background-image:linear-gradient(rgb(110, 198, 201),rgb(220, 226, 193),rgba(203, 142, 241, 0.91));
		#box-shadow: 0 3px 2px rgba(0,0,0,0.4);
		background-size: cover;
	}
input[type=text] ,input[type=Date],input[type=Time]{
			 display:flex;
    			 flex-wrap:wrap;
			 padding:15px;
			 color:black;
 			 border: 1px solid black;
 			 border-radius: 9px;
			 text-align:;
 			 font-weight:bold;
			 font-size:1rem;
 			 height:20px;
 			 width:700px;
 			 margin:5px;
}
 input[type=submit],input[type=button],input[type=reset] {
			border-style: none;
        border-color: inherit;
        border-width: medium;
        background-image:linear-gradient(to right,powderblue,powderblue);  					color: fff;
  			padding: 12px 2px;
  			text-align: center;
  			text-decoration: none;
  			display: inline-block;
  			font-size: 14px;
  			margin: 6px 4px;
  			cursor: pointer;
 			border-radius: 12px;
 			font-weight:bold;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td><asp:TextBox ID="TextBox1" placeholder="Classroom ID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox2" placeholder="Student ID" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="New record" Height="44px" Width="175px" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Save record" Height="44px" Width="175px" OnClick="Button2_Click"/>
        <asp:Button ID="Button3" runat="server" Text="Update record" Height="44px" Width="175px" OnClick="Button3_Click"/>
        <asp:Button ID="Button4" runat="server" Text="Delete record" Height="44px" Width="175px" OnClick="Button4_Click"/>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptClassroomstudent.aspx">Report</asp:LinkButton>
        <asp:Button ID="Button5" runat="server" Text="All search" Height="44px" Width="175px" OnClick="Button5_Click"/>
        <asp:Button ID="Button6" runat="server" Text="Particular search" Height="44px" Width="175px" OnClick="Button6_Click"/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="254px" Width="1118px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="Classroom Id" SortExpression="classroom_id" />
                <asp:BoundField DataField="student_id" HeaderText="Student Id" SortExpression="student_id" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [classroom_student]"></asp:SqlDataSource>
    </form>
</body>
</html>
