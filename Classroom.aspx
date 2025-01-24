<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Classroom.aspx.cs" Inherits="Classroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <center>
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
    <form id="form1" runat="server" aria-orientation="horizontal" aria-pressed="false" aria-required="False">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><asp:TextBox ID="TextBox1" placeholder="Classroom ID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
          
                <td><asp:TextBox ID="TextBox2" placeholder="Year" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox3" placeholder="Grade ID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td><asp:TextBox ID="TextBox4" placeholder="Section" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox5" placeholder="Status" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td><asp:TextBox ID="TextBox6" placeholder="Remarks" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="TextBox7" placeholder="Teacher ID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="Button1" runat="server" Text="New record" Height="44px" Width="175px" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Save record" Height="44px" Width="166px" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Update record" Height="45px" Width="200px" OnClick="Button3_Click"/>
        <asp:Button ID="Button4" runat="server" Text="Delete record" Height="45px" Width="221px" OnClick="Button4_Click"/>
        <asp:Button ID="Button5" runat="server" Text="All Search" Height="44px" Width="221px" OnClick="Button5_Click" />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RptClassroom.aspx">Report</asp:LinkButton>
        <asp:Button ID="Button6" runat="server" Text="Particular search" Height="45px" Width="225px" OnClick="Button6_Click"/>
        <asp:GridView ID="GridView1" runat="server" Height="295px" Width="1489px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="Classroom ID" SortExpression="classroom_id" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="grade_id" HeaderText="Grade ID" SortExpression="grade_id" />
                <asp:BoundField DataField="section" HeaderText="Section" SortExpression="section" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:BoundField DataField="teacher_id" HeaderText="Teacher ID" SortExpression="teacher_id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [classroom]"></asp:SqlDataSource>
    </form>
</body>
</html>
