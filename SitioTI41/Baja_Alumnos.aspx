<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja_Alumnos.aspx.cs" Inherits="SitioTI41.Baja_Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gdAlumnos" runat="server" AutoGenerateColumns="False" DataKeyNames="id_alumno" DataSourceID="sqlAlumnos">
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
        </asp:GridView>
        <asp:SqlDataSource ID="sqlAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Alumnos]"></asp:SqlDataSource>

        <asp:Label ID="ldlAlumno" runat="server" Text="Ingresa el ID del alumno que quieres dar de baja"></asp:Label>
        <br />
        <asp:TextBox ID="tbAlumno" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        <asp:RequiredFieldValidator ID="requireIdAlumno" runat="server" ControlToValidate="tbAlumno" ErrorMessage="Ingresa un ID, mi hermano"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
