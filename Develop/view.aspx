<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Develop.view" %>

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

    <div id="formInscription" class="container">
        <div class="page-header">
            <h1>Formulario de Inscripción</h1>
        </div>
        <div style="text-align: left; width: 100%;">
        </div>
        <br />
        <div class="form-group pull-right">
            <h4>Elige el mes
                            <asp:DropDownList ID="dpwPeriodos" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpwPeriodos_SelectedIndexChanged">
                                <asp:ListItem Text="Junio" Value="06" />
                                <asp:ListItem Text="Mayo" Value="05" />
                                <asp:ListItem Text="Abril" Value="04" />
                                <asp:ListItem Text="Marzo" Value="03" />
                                <asp:ListItem Text="Febrero" Value="02" />
                                <asp:ListItem Text="Enero" Value="01" />
                            </asp:DropDownList>
            </h4>
        </div>
        <br />
        <br />
        <br />
        <div class="row">
            <div class="panel with-nav-tabs panel-primary">
                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tabVentasxMesero" data-toggle="tab">Ventas x mesero</a></li>
                        <li><a href="#tabClientes" data-toggle="tab">Clientes</a></li>
                        <li><a href="#tabProductosVendidos" data-toggle="tab">Productos vendidos</a></li>
                    </ul>
                </div>

                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tabVentasxMesero">
                            <%--<div class="form-group pull-right">
                                <h4>Elige el mes
                            <asp:DropDownList ID="dpwPeriodos" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dpwPeriodos_SelectedIndexChanged">
                                <asp:ListItem Text="Junio" Value="06" />
                                <asp:ListItem Text="Mayo" Value="05" />
                                <asp:ListItem Text="Abril" Value="04" />
                                <asp:ListItem Text="Marzo" Value="03" />
                                <asp:ListItem Text="Febrero" Value="02" />
                                <asp:ListItem Text="Enero" Value="01" />
                            </asp:DropDownList>
                                </h4>
                            </div>--%>

                            <asp:GridView ID="gdvNotas" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceNotas"
                                ForeColor="#333333" GridLines="None" Width="100%" CssClass="table table-condensed table-responsive">
                                <Columns>
                                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres">
                                        <HeaderStyle Width="196px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos">
                                        <ItemStyle />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor">
                                        <ItemStyle />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <h2 style="font-size: 20px; text-align: center; width: 100%">No existe información para visualizar</h2>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceNotas" runat="server" ConnectionString="<%$ ConnectionStrings:academicPruebasConnectionString %>" SelectCommand="EXEC dbo.VentasxMesero @Mes">
                                <SelectParameters>
                                    <asp:SessionParameter Name="Mes" SessionField="userCode" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                        <%--PESTAÑA CLIENTES--%>
                        <div class="tab-pane fade" id="tabClientes">
                            <div class="form-group pull-left">
                                <h5>Elige un valor
                                    <asp:TextBox runat="server" ID="txtConsultaxValor" type="number" ClientIDMode="Static" CssClass="form-control" TextMode="SingleLine" PlaceHolder="" MaxLength="30" MinLines="1" MaxLines="5" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConsultaxValor" Display="Dynamic" CssClass="text-danger" ErrorMessage="* El campo de apellidos es obligatorio" ValidationGroup="vgConsultaCliente" />
                                    <asp:Button runat="server" ID="btnBuscarCliente" UseSubmitBehavior="false" ClientIDMode="Static" Text="Buscar" CssClass="btn btn-primary btn-lg m-t-10 font-weight-bold" CausesValidation="true" ValidationGroup="vgConsultaCliente" OnClick="btnBuscarCliente_Click" />
                                </h5>
                            </div>

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1"
                                ForeColor="#333333" GridLines="None" Width="100%" CssClass="table table-condensed table-responsive">
                                <Columns>
                                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres">
                                        <HeaderStyle Width="196px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos">
                                        <ItemStyle />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor">
                                        <ItemStyle />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <h2 style="font-size: 20px; text-align: center; width: 100%">No existe información para visualizar</h2>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:academicPruebasConnectionString %>" SelectCommand="EXEC dbo.VentasxClientes @MesCliente, @ValorCliente">
                                <SelectParameters>
                                    <asp:SessionParameter Name="MesCliente" SessionField="userCode" />
                                    <asp:SessionParameter Name="ValorCliente" SessionField="IdValor" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                        <div class="tab-pane fade" id="tabProductosVendidos">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2"
                                ForeColor="#333333" GridLines="None" Width="100%" CssClass="table table-condensed table-responsive">
                                <Columns>
                                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto">
                                        <HeaderStyle Width="196px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Platos" HeaderText="Platos" SortExpression="Platos">
                                        <ItemStyle />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ValorTotalMes" HeaderText="Valor Total Mes" SortExpression="ValorTotalMes">
                                        <ItemStyle />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <h2 style="font-size: 20px; text-align: center; width: 100%">No existe información para visualizar</h2>
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:academicPruebasConnectionString %>" SelectCommand="EXEC dbo.VentasxProductos @MesProducto">
                                <SelectParameters>
                                    <asp:SessionParameter Name="MesProducto" SessionField="userCode" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>


</asp:Content>
