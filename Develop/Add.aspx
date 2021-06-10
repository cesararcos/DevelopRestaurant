<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Develop.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /*Remove Bold Bootstrap*/
        #formInscription label {
            font-weight: normal;
        }

        .the-legend {
            border-style: none;
            border-width: 100px;
            font-size: 15px;
            line-height: 20px;
            margin-bottom: 0;
            font-weight: bold;
        }

        .the-fieldset {
            background-color: transparent;
            border: 2px groove threedface #444;
            -webkit-box-shadow: 0px 0px 0px 0px #000;
            box-shadow: 0px 0px 0px 0px #000;
        }

        legend.the-legend {
            width: inherit;
            padding: 0 10px;
            border-bottom: none;
        }

        .with-nav-tabs.panel-primary .nav-tabs > li > a,
        .with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
        .with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
            color: #fff;
        }

            .with-nav-tabs.panel-primary .nav-tabs > .open > a,
            .with-nav-tabs.panel-primary .nav-tabs > .open > a:hover,
            .with-nav-tabs.panel-primary .nav-tabs > .open > a:focus,
            .with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
            .with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
                color: #fff;
                background-color: #3071a9;
                border-color: transparent;
            }

        .with-nav-tabs.panel-primary .nav-tabs > li.active > a,
        .with-nav-tabs.panel-primary .nav-tabs > li.active > a:hover,
        .with-nav-tabs.panel-primary .nav-tabs > li.active > a:focus {
            color: #428bca;
            background-color: #fff;
            border-color: #428bca;
            border-bottom-color: transparent;
        }

        .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu {
            background-color: #428bca;
            border-color: #3071a9;
        }

            .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a {
                color: #fff;
            }

                .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
                .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
                    background-color: #3071a9;
                }

            .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a,
            .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
            .with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
                background-color: #4a9fe9;
            }

        .panel.with-nav-tabs .panel-heading {
            padding: 5px 5px 0 5px;
        }

        .panel.with-nav-tabs .nav-tabs {
            border-bottom: none;
        }

        .panel.with-nav-tabs .nav-justified {
            margin-bottom: -1px;
        }
    </style>
    <%--test--%>
    <div id="formInscription" class="container">
        <div class="page-header">
            <h1>Formulario de Inscripción</h1>
        </div>
        <div style="text-align: left; width: 100%;">
        </div>
        <br />

        <div class="row">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tabAddInformation" data-toggle="tab">Información Personal</a></li>
                    </ul>
                </div>

                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tabAddInformation">
                            <fieldset class="well the-fieldset">
                                <strong>(Por favor llenar con la informacion del cliente)</strong>
                                <legend class="the-legend">Informacion del cliente</legend>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="txtIdentificacion">Identificacion</label><br />
                                        <asp:TextBox runat="server" ID="txtIdentificacion" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtIdentificacion" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtNombres">Nombres</label><br />
                                        <asp:TextBox runat="server" ID="txtNombres" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombres" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtApellidos">Apellidos</label><br />
                                        <asp:TextBox runat="server" ID="txtApellidos" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellidos" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="txtDireccion">Direccion</label><br />
                                        <asp:TextBox runat="server" ID="txtDireccion" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="txtTelefono">Telefono</label><br />
                                        <asp:TextBox runat="server" ID="txtTelefono" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefono" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>
                                <%--<asp:DropDownList ID="dpwTypeIdentificationOrigin" runat="server" ClientIDMode="Static" CssClass="form-control"  ></asp:DropDownList>--%>
                            </fieldset>
                            <br />

                            <fieldset class="well the-fieldset">
                                <strong>(Por favor llenar con la informacion de la mesa)</strong>
                                <legend class="the-legend">Informacion de mesa</legend>
                                <div class="row">
                                    <div class="col-md-3">
                                        <label for="txtMesa">Nro de mesa</label><br />
                                        <asp:TextBox runat="server" ID="txtMesa" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMesa" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-3">
                                        <label for="txtNombreMesa">Nombre mesa</label><br />
                                        <asp:TextBox runat="server" ID="txtNombreMesa" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombreMesa" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-3">
                                        <label for="txtReservada">Reservada</label><br />
                                        <asp:DropDownList CssClass="form-control" ID="dpReservada" runat="server">
                                            <asp:ListItem Text="Si" Value="true" />
                                            <asp:ListItem Text="No" Value="false" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="txtPuestos">Puestos</label><br />
                                        <asp:DropDownList CssClass="form-control" ID="dpPuestos" runat="server">
                                            <asp:ListItem Text="1" Value="1" />
                                            <asp:ListItem Text="2" Value="2" />
                                            <asp:ListItem Text="3" Value="3" />
                                            <asp:ListItem Text="4" Value="4" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </fieldset>
                            <br />

                            <fieldset class="well the-fieldset">
                                <strong>(Por favor elija la informacion del mesero)</strong>
                                <legend class="the-legend">Informacion de mesero</legend>
                                <div class="row">
                                    <div class="col-md-4">
                                        <%--<asp:UpdatePanel runat="server">
                                            <ContentTemplate>--%>
                                                <label for="txtIdMesero">Id Mesero</label><br />
                                                <asp:DropDownList ID="dpwIdMesero" runat="server" ClientIDMode="Static" CssClass="form-control" OnSelectedIndexChanged="dpwIdMesero_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="txtIdMesero" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />--%>
                                            <%--</ContentTemplate>
                                        </asp:UpdatePanel>--%>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtNombresMesero">Nombres</label><br />
                                        <asp:TextBox runat="server" ID="txtNombresMesero" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" ReadOnly="true" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombresMesero" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtApellidosMesero">Apellidos</label><br />
                                        <asp:TextBox runat="server" ID="txtApellidosMesero" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" ReadOnly="true" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellidosMesero" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="txtEdad">Edad</label><br />
                                        <asp:TextBox runat="server" ID="txtEdad" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" ReadOnly="true" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEdad" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="txtAntiguedad">Antiguedad</label><br />
                                        <asp:TextBox runat="server" ID="txtAntiguedad" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" ReadOnly="true" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAntiguedad" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>
                            </fieldset>
                            <br />

                            <fieldset class="well the-fieldset">
                                <strong>(Por favor llenar con la informacion del plato(s))</strong>
                                <legend class="the-legend">Informacion de facturacion</legend>
                                <div class="row">
                                    <div class="col-md-8">
                                        <label for="txtPlato">Plato</label><br />
                                        <asp:TextBox runat="server" ID="txtPlato" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPlato" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtValor">Valor</label><br />
                                        <asp:TextBox runat="server" ID="txtValor" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtValor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>
                            </fieldset>
                            <br />

                            <fieldset class="well the-fieldset">
                                <strong>(Por favor llenar con la informacion del supervisor)</strong>
                                <legend class="the-legend">Informacion de supervisor</legend>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label for="txtIdSupervisor">Id supervisor</label><br />
                                        <asp:TextBox runat="server" ID="txtIdSupervisor" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtIdSupervisor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtNombresSupervisor">Nombres</label><br />
                                        <asp:TextBox runat="server" ID="txtNombresSupervisor" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombresSupervisor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtApellidosSupervisor">Apellidos</label><br />
                                        <asp:TextBox runat="server" ID="txtApellidosSupervisor" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellidosSupervisor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="txtEdadSupervisor">Edad</label><br />
                                        <asp:TextBox runat="server" ID="txtEdadSupervisor" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEdadSupervisor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de nombres es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                    <div class="col-md-6">
                                        <label for="txtAntiguedadSupervisor">Antiguedad</label><br />
                                        <asp:TextBox runat="server" ID="txtAntiguedadSupervisor" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAntiguedadSupervisor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgInscription" />
                                    </div>
                                </div>
                            </fieldset>

                        </div>
                    </div>

                    <asp:Button runat="server" ID="btnSave" UseSubmitBehavior="false" ClientIDMode="Static" Text="Guardar" CssClass="btn btn-primary btn-lg m-t-10 font-weight-bold" CausesValidation="true" ValidationGroup="vgInscription" OnClick="btnSave_Click" />

                </div>

            </div>
        </div>
    </div>

</asp:Content>
