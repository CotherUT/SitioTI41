<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar_Alumnos.aspx.cs" Inherits="SitioTI41.Modificar_Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gdAlumnos" runat="server" AutoGenerateColumns="False" DataKeyNames="id_alumno" DataSourceID="sqlAlumnos" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="id_alumno" HeaderText="id_alumno" InsertVisible="False" ReadOnly="True" SortExpression="id_alumno" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="ap_paterno" HeaderText="ap_paterno" SortExpression="ap_paterno" />
                <asp:BoundField DataField="ap_materno" HeaderText="ap_materno" SortExpression="ap_materno" />
                <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="id_grupo" HeaderText="id_grupo" SortExpression="id_grupo" />
                <asp:BoundField DataField="id_carrera" HeaderText="id_carrera" SortExpression="id_carrera" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="sqlAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Alumnos]"></asp:SqlDataSource>
    </form>
</body>
</html>
