<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="SitioTI41.Alumnos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Seccion de metadatos -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="description" content="Informacion de la carrera de tics" />
    <meta name="author" content="I.S.C/M.D. Lizbeth Geraldine Ibarra Carlos" />
    <meta name="keywords" content="Tecnologias, TI, UTN, tecnologias informacion, carrera ti" />
    <meta name="generator" content="html5, css3, asp.net, c#, gestor sqlserver, javascript" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Titulo Pagina -->
    <title>TI/Alumnos</title>
    <link rel="icon" href="imagenes/icono.ico" />
    <link rel="stylesheet" type="text/css" href="estilos/forms.css" />
    <style>
        header{
            background-image:url("imagenes/encabezado.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: 300px;
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes/LogoTIC.png" width="150" height="100" />
    </header>
    <nav class="menu">
        <ul>
            <li><a href="index.html">Inicio</a></li>
            <li><a href="">Alta</a></li>
            <li><a href="">Baja</a></li>
            <li><a href="Consulta_general_alumnos.aspx">Consulta</a></li>
            <li><a href="">Modificación</a></li>
        </ul>
    </nav>
    <br /><br />
    <section>
        <h1>Alumnos</h1>
        <form id="form1" runat="server">
            <table>
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
                </tr> <%--finaliza segundo renglon--%>
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
                        <asp:DropDownList ID="ddlCarrera" runat="server" CssClass="textbox" DataSourceID="sqlCarrera" DataValueField="id_carrera" DataTextField="carrera" ></asp:DropDownList>
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
            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="btnGuardar" runat="server" ImageUrl="~/imagenes/guardar.png" OnClick="btnGuardar_Click" />
                        <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/imagenes/cancelar.png" />
                    </td>
                </tr>
            </table>
                        <br />
            <asp:ValidationSummary ID="Summary" runat="server" CssClass="validaciones" />
        </form>
    </section>
    
    <asp:SqlDataSource ID="sqlCarrera" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Carreras]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGrupo" runat="server" ConnectionString="<%$ ConnectionStrings:UT41ConnectionString %>" SelectCommand="SELECT * FROM [Grupos]"></asp:SqlDataSource>
    
</body>
</html>
