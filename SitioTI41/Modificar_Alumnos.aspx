<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar_Alumnos.aspx.cs" Inherits="SitioTI41.Modificar_Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

        <%--formulario--%>
        <table>
            <tr>
                <td>ID alumno:
                </td>
                <td>
                    <asp:TextBox ID="tbIdAlumno" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                </td>
            </tr>
        </table>

        <table id="tbDatos" runat="server">
            <%--inicia primer renglon--%>
            <tr>
                <td>
                    <asp:Label ID="lbNombres" runat="server" Text="Nombres"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbNombres" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredNombres" runat="server" CssClass="validaciones" ControlToValidate="tbNombres" ErrorMessage="-El Nombre es campo obligatorio" Text="*"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularNombres" runat="server" CssClass="validaciones" ControlToValidate="tbNombres" ErrorMessage="-El  nombre solo puede contener letras y espacio en blanco" Text="*" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator><br />
                </td>
            </tr>
            <%-- inicia segundo renglon--%>
            <tr>
                <td>
                    <asp:Label ID="lbPaterno" runat="server" Text="Apellido Paterno:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbPaterno" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredPaterno" runat="server" CssClass="validaciones" ControlToValidate="tbPaterno" ErrorMessage="-El apellido paterno es campo obligatorio" Text="*"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionPaterno" runat="server" CssClass="validaciones" ControlToValidate="tbPaterno" ErrorMessage="-El  apellido paterno solo puede contener letras y espacio en blanco" Text="*" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:Label ID="lbMaterno" runat="server" Text="Apellido Materno:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMaterno" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredMaterno" runat="server" CssClass="validaciones" ControlToValidate="tbMaterno" ErrorMessage="-El apellido materno es campo obligatorio" Text="*"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularMaterno" runat="server" CssClass="validaciones" ControlToValidate="tbMaterno" ErrorMessage="-El  apellido materno solo puede contener letras y espacio en blanco" Text="*" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <%--finaliza segundo renglon--%>
            <%-- inicia tercer renglon--%>
            <tr>
                <td>
                    <asp:Label ID="lbSexo" runat="server" Text="Sexo:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rblSexo" runat="server" CssClass="textbox">
                        <asp:ListItem Value="F" Selected="True">Femenino</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                <td></td>
                <td>
                    <asp:Label ID="lbCorreo" runat="server" Text="Correo Eletrónico:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" CssClass="validaciones" ControlToValidate="tbEmail" ErrorMessage="-El apellido email es campo obligatorio" Text="*"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server" CssClass="validaciones" ControlToValidate="tbEmail" ErrorMessage="-Formato de correo no valido ejemplo@dominio.com" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <%--inicia cuarto renglon--%>
            <tr>
                <td>
                    <asp:Label ID="lbCarrera" runat="server" Text="Carrera:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCarrera" runat="server" CssClass="textbox" DataSourceID="sqlCarrera" DataValueField="id_carrera" DataTextField="carrera"></asp:DropDownList>
                </td>
                <td></td>
                <td>
                    <asp:Label ID="lbGrupo" runat="server" Text="Grupo:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGrupo" runat="server" CssClass="textbox" DataSourceID="sqlGrupo" DataValueField="id_grupo" DataTextField="Grupo"></asp:DropDownList>
                </td>
            </tr>
        </table>

        <table id="tbBotones" runat="server">
            <tr>
                <td>
                    <asp:ImageButton ID="btnGuardar" runat="server" ImageUrl="imagenes/guardar.png" />
                    <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="imagenes/cancelar.png" />
                </td>
            </tr>
        </table>
        

        <asp:SqlDataSource ID="sqlCarrera" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Carreras]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGrupo" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Grupos]"></asp:SqlDataSource>
    </form>

</body>
</html>
