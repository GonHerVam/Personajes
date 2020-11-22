<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArmarPersonaje.aspx.cs" Inherits="Personajes.CapaPresentacion.ArmarPersonaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdPersonajes" runat="server" AutoGenerateColumns="false"  DataKeyNames="PersonajeID,RazaID,ClaseID" CellPadding="10" 
                CellSpacing="0" ShowFooter="true" CssClass="myGrid" HeaderStyle-CssClass="Header" RowStyle-CssClass="trow1" 
                AlternatingRowStyle-CssClass="trow2" OnRowCommand="grdPersonajes_RowCommand">
                    <Columns>
                       
                        <asp:TemplateField >
                            <HeaderTemplate>Nombre del Personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("PersonajeNombre")%></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtNombrePersonaje" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfNDP" runat="server" ErrorMessage="*"
                                   ForeColor="DarkRed" Display="Dynamic" ValidationGroup="Add" ControlToValidate="txtNombrePersonaje">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <HeaderTemplate>Raza del personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("Raza") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlRaza" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlRaza_SelectedIndexChanged">
                                    <asp:ListItem Text="Elija la raza" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="rfRDP" runat="server" ErrorMessage="*" ForeColor="DarkRed" 
                                    Display="Dynamic" ValidationGroup="Add" ControlToValidate="ddlRaza" InitialValue="0">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <HeaderTemplate>Clase del personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("Clase") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:DropDownList ID="ddlClase" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlClase_SelectedIndexChanged">
                                    <asp:ListItem Text="Elija la clase" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:RequiredFieldValidator ID="rfCDP" runat="server" ErrorMessage="*" ForeColor="DarkRed"
                                    Display="Dynamic" ValidationGroup="Add" ControlToValidate="ddlClase" InitialValue="0">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                     
                        <asp:TemplateField>
                            <HeaderTemplate>Arma del Personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("Arma")%></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtArmaDelPersonaje" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfADP" runat="server" ErrorMessage="*" ForeColor="DarkRed" Display="Dynamic" 
                                    ValidationGroup="Add" ControlToValidate="txtArmaDelPersonaje">Requerido</asp:RequiredFieldValidator> 
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Nombre del Arma</HeaderTemplate>
                            <ItemTemplate><%#Eval("ArmaNombre") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtNombreDelArma" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator  ID="rfNDA"  ErrorMessage ="*" ControlToValidate="txtNombreDelArma" runat="server" 
                                    ForeColor="DarkRed" Display="Dynamic" ValidationGroup="Add">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Monedas</HeaderTemplate>
                            <ItemTemplate><%#Eval("Monedas") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtMonedas" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfMDP"  runat="server" ErrorMessage ="*" ForeColor="DarkRed" Display="Dynamic"
                                    ValidationGroup="Add" ControlToValidate="txtMonedas">Requerido</asp:RequiredFieldValidator>
                                <asp:RangeValidator  ID="rvMDP" runat="server" ControlToValidate="txtMonedas"  MinimumValue="1" MaximumValue="1000" Type="Integer" 
                                    ErrorMessage="*" ForeColor="DarkRed" Display="Dynamic">De 1 a 1000</asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Reino del Personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("Reino") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtReinoPersonaje" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfRDP" runat="server" ErrorMessage="*" ForeColor="DarkRed" Display="Dynamic" 
                                    ValidationGroup="Add" ControlToValidate="txtReinoPersonaje">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Nombra tu Montura</HeaderTemplate>
                            <ItemTemplate><%#Eval("MonturaNombre") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtNombreMontura" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfNDM" ErrorMessage="*" 
                                    ControlToValidate="txtNombreMontura" runat="server" ForeColor="DarkRed" Display="Dynamic" ValidationGroup="Add">Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Color de Armadura</HeaderTemplate>
                            <ItemTemplate><%#Eval("ColorArmadura") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtColorArmadura" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfCDA" runat="server" ErrorMessage="*" ForeColor="DarkRed" Display="Dynamic" 
                                    ValidationGroup="Add" ControlToValidate="txtColorArmadura" >Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Lenguaje del Personaje</HeaderTemplate>
                            <ItemTemplate><%#Eval("Lenguaje") %></ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtLenguaje" runat="server"></asp:TextBox><br />
                                <asp:RequiredFieldValidator ID="rfLDP" runat="server" ErrorMessage="*" ForeColor="DarkRed" Display="Dynamic" 
                                    ValidationGroup="Add" ControlToValidate="txtLenguaje" >Requerido</asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton id="lbtnEditar" runat="server" CommandName="Edit">Editar</asp:LinkButton>
                                &nbsp;|&nbsp;
                                <asp:LinkButton ID="lbtnEliminar" runat="server" CommandName="Delete">Borrar</asp:LinkButton>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="btnAgregar" runat="server" Text="Guardar" CommandName="Insert" ValidationGroup="Add" />
                            </FooterTemplate>
                        </asp:TemplateField>
                    </Columns>      

            </asp:GridView>
        </div>
    </form>
</body>
</html>
