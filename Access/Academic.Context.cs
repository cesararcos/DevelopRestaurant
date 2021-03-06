//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Access
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class RestauranteEntities : DbContext
    {
        public RestauranteEntities()
            : base("name=RestauranteEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
    
        public virtual ObjectResult<VistaMeseros_Result> VistaMeseros()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VistaMeseros_Result>("VistaMeseros");
        }
    
        public virtual ObjectResult<ListaMeseros_Result> ListaMeseros()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ListaMeseros_Result>("ListaMeseros");
        }
    
        public virtual ObjectResult<VistaMeserosId_Result> VistaMeserosId()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VistaMeserosId_Result>("VistaMeserosId");
        }
    
        public virtual ObjectResult<ListaMeserosId_Result> ListaMeserosId()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ListaMeserosId_Result>("ListaMeserosId");
        }
    
        public virtual ObjectResult<VistaMeserosIdCambiar_Result> VistaMeserosIdCambiar(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VistaMeserosIdCambiar_Result>("VistaMeserosIdCambiar", idMeseroParameter);
        }
    
        public virtual ObjectResult<string> EscogerMeseroxId(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("EscogerMeseroxId", idMeseroParameter);
        }
    
        public virtual ObjectResult<VistaMeserosIdCambiarV2_Result> VistaMeserosIdCambiarV2(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VistaMeserosIdCambiarV2_Result>("VistaMeserosIdCambiarV2", idMeseroParameter);
        }
    
        public virtual ObjectResult<Escoger_Result> Escoger(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Escoger_Result>("Escoger", idMeseroParameter);
        }
    
        public virtual ObjectResult<VistaMeserosIdCambiarV3_Result> VistaMeserosIdCambiarV3(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<VistaMeserosIdCambiarV3_Result>("VistaMeserosIdCambiarV3", idMeseroParameter);
        }
    
        public virtual ObjectResult<listaEscogeDatosMesero_Result> listaEscogeDatosMesero(string idMesero)
        {
            var idMeseroParameter = idMesero != null ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<listaEscogeDatosMesero_Result>("listaEscogeDatosMesero", idMeseroParameter);
        }
    
        public virtual ObjectResult<string> InsertarPruebaMesa(string mesa, string nombre, Nullable<bool> reservada, string puestos)
        {
            var mesaParameter = mesa != null ?
                new ObjectParameter("Mesa", mesa) :
                new ObjectParameter("Mesa", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var reservadaParameter = reservada.HasValue ?
                new ObjectParameter("Reservada", reservada) :
                new ObjectParameter("Reservada", typeof(bool));
    
            var puestosParameter = puestos != null ?
                new ObjectParameter("Puestos", puestos) :
                new ObjectParameter("Puestos", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("InsertarPruebaMesa", mesaParameter, nombreParameter, reservadaParameter, puestosParameter);
        }
    
        public virtual ObjectResult<InstertarPrueba_Result> InstertarPrueba(string mesa, string nombre, Nullable<bool> reservada, string puestos)
        {
            var mesaParameter = mesa != null ?
                new ObjectParameter("Mesa", mesa) :
                new ObjectParameter("Mesa", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var reservadaParameter = reservada.HasValue ?
                new ObjectParameter("Reservada", reservada) :
                new ObjectParameter("Reservada", typeof(bool));
    
            var puestosParameter = puestos != null ?
                new ObjectParameter("Puestos", puestos) :
                new ObjectParameter("Puestos", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<InstertarPrueba_Result>("InstertarPrueba", mesaParameter, nombreParameter, reservadaParameter, puestosParameter);
        }
    
        public virtual ObjectResult<string> InsertarDatos(Nullable<int> identificacionCliente, string nombresCliente, string apellidosCliente, string direccionCliente, string telefonoCliente, Nullable<int> nroMesa, string nombreMesa, Nullable<bool> reservadaMesa, string puestosMesa, Nullable<int> idMesero, string plato, Nullable<decimal> valorPlato, Nullable<int> idSupervisor, string nombresSupervisor, string apellidosSupervisor, string edadSupervisor, string antiguedadSupervisor)
        {
            var identificacionClienteParameter = identificacionCliente.HasValue ?
                new ObjectParameter("IdentificacionCliente", identificacionCliente) :
                new ObjectParameter("IdentificacionCliente", typeof(int));
    
            var nombresClienteParameter = nombresCliente != null ?
                new ObjectParameter("NombresCliente", nombresCliente) :
                new ObjectParameter("NombresCliente", typeof(string));
    
            var apellidosClienteParameter = apellidosCliente != null ?
                new ObjectParameter("ApellidosCliente", apellidosCliente) :
                new ObjectParameter("ApellidosCliente", typeof(string));
    
            var direccionClienteParameter = direccionCliente != null ?
                new ObjectParameter("DireccionCliente", direccionCliente) :
                new ObjectParameter("DireccionCliente", typeof(string));
    
            var telefonoClienteParameter = telefonoCliente != null ?
                new ObjectParameter("TelefonoCliente", telefonoCliente) :
                new ObjectParameter("TelefonoCliente", typeof(string));
    
            var nroMesaParameter = nroMesa.HasValue ?
                new ObjectParameter("NroMesa", nroMesa) :
                new ObjectParameter("NroMesa", typeof(int));
    
            var nombreMesaParameter = nombreMesa != null ?
                new ObjectParameter("NombreMesa", nombreMesa) :
                new ObjectParameter("NombreMesa", typeof(string));
    
            var reservadaMesaParameter = reservadaMesa.HasValue ?
                new ObjectParameter("ReservadaMesa", reservadaMesa) :
                new ObjectParameter("ReservadaMesa", typeof(bool));
    
            var puestosMesaParameter = puestosMesa != null ?
                new ObjectParameter("PuestosMesa", puestosMesa) :
                new ObjectParameter("PuestosMesa", typeof(string));
    
            var idMeseroParameter = idMesero.HasValue ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(int));
    
            var platoParameter = plato != null ?
                new ObjectParameter("Plato", plato) :
                new ObjectParameter("Plato", typeof(string));
    
            var valorPlatoParameter = valorPlato.HasValue ?
                new ObjectParameter("ValorPlato", valorPlato) :
                new ObjectParameter("ValorPlato", typeof(decimal));
    
            var idSupervisorParameter = idSupervisor.HasValue ?
                new ObjectParameter("IdSupervisor", idSupervisor) :
                new ObjectParameter("IdSupervisor", typeof(int));
    
            var nombresSupervisorParameter = nombresSupervisor != null ?
                new ObjectParameter("NombresSupervisor", nombresSupervisor) :
                new ObjectParameter("NombresSupervisor", typeof(string));
    
            var apellidosSupervisorParameter = apellidosSupervisor != null ?
                new ObjectParameter("ApellidosSupervisor", apellidosSupervisor) :
                new ObjectParameter("ApellidosSupervisor", typeof(string));
    
            var edadSupervisorParameter = edadSupervisor != null ?
                new ObjectParameter("EdadSupervisor", edadSupervisor) :
                new ObjectParameter("EdadSupervisor", typeof(string));
    
            var antiguedadSupervisorParameter = antiguedadSupervisor != null ?
                new ObjectParameter("AntiguedadSupervisor", antiguedadSupervisor) :
                new ObjectParameter("AntiguedadSupervisor", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("InsertarDatos", identificacionClienteParameter, nombresClienteParameter, apellidosClienteParameter, direccionClienteParameter, telefonoClienteParameter, nroMesaParameter, nombreMesaParameter, reservadaMesaParameter, puestosMesaParameter, idMeseroParameter, platoParameter, valorPlatoParameter, idSupervisorParameter, nombresSupervisorParameter, apellidosSupervisorParameter, edadSupervisorParameter, antiguedadSupervisorParameter);
        }
    
        public virtual ObjectResult<AdicionarDatos_Result> AdicionarDatos(Nullable<int> identificacionCliente, string nombresCliente, string apellidosCliente, string direccionCliente, string telefonoCliente, Nullable<int> nroMesa, string nombreMesa, Nullable<bool> reservadaMesa, string puestosMesa, Nullable<int> idMesero, string plato, Nullable<decimal> valorPlato, Nullable<int> idSupervisor, string nombresSupervisor, string apellidosSupervisor, string edadSupervisor, string antiguedadSupervisor)
        {
            var identificacionClienteParameter = identificacionCliente.HasValue ?
                new ObjectParameter("IdentificacionCliente", identificacionCliente) :
                new ObjectParameter("IdentificacionCliente", typeof(int));
    
            var nombresClienteParameter = nombresCliente != null ?
                new ObjectParameter("NombresCliente", nombresCliente) :
                new ObjectParameter("NombresCliente", typeof(string));
    
            var apellidosClienteParameter = apellidosCliente != null ?
                new ObjectParameter("ApellidosCliente", apellidosCliente) :
                new ObjectParameter("ApellidosCliente", typeof(string));
    
            var direccionClienteParameter = direccionCliente != null ?
                new ObjectParameter("DireccionCliente", direccionCliente) :
                new ObjectParameter("DireccionCliente", typeof(string));
    
            var telefonoClienteParameter = telefonoCliente != null ?
                new ObjectParameter("TelefonoCliente", telefonoCliente) :
                new ObjectParameter("TelefonoCliente", typeof(string));
    
            var nroMesaParameter = nroMesa.HasValue ?
                new ObjectParameter("NroMesa", nroMesa) :
                new ObjectParameter("NroMesa", typeof(int));
    
            var nombreMesaParameter = nombreMesa != null ?
                new ObjectParameter("NombreMesa", nombreMesa) :
                new ObjectParameter("NombreMesa", typeof(string));
    
            var reservadaMesaParameter = reservadaMesa.HasValue ?
                new ObjectParameter("ReservadaMesa", reservadaMesa) :
                new ObjectParameter("ReservadaMesa", typeof(bool));
    
            var puestosMesaParameter = puestosMesa != null ?
                new ObjectParameter("PuestosMesa", puestosMesa) :
                new ObjectParameter("PuestosMesa", typeof(string));
    
            var idMeseroParameter = idMesero.HasValue ?
                new ObjectParameter("IdMesero", idMesero) :
                new ObjectParameter("IdMesero", typeof(int));
    
            var platoParameter = plato != null ?
                new ObjectParameter("Plato", plato) :
                new ObjectParameter("Plato", typeof(string));
    
            var valorPlatoParameter = valorPlato.HasValue ?
                new ObjectParameter("ValorPlato", valorPlato) :
                new ObjectParameter("ValorPlato", typeof(decimal));
    
            var idSupervisorParameter = idSupervisor.HasValue ?
                new ObjectParameter("IdSupervisor", idSupervisor) :
                new ObjectParameter("IdSupervisor", typeof(int));
    
            var nombresSupervisorParameter = nombresSupervisor != null ?
                new ObjectParameter("NombresSupervisor", nombresSupervisor) :
                new ObjectParameter("NombresSupervisor", typeof(string));
    
            var apellidosSupervisorParameter = apellidosSupervisor != null ?
                new ObjectParameter("ApellidosSupervisor", apellidosSupervisor) :
                new ObjectParameter("ApellidosSupervisor", typeof(string));
    
            var edadSupervisorParameter = edadSupervisor != null ?
                new ObjectParameter("EdadSupervisor", edadSupervisor) :
                new ObjectParameter("EdadSupervisor", typeof(string));
    
            var antiguedadSupervisorParameter = antiguedadSupervisor != null ?
                new ObjectParameter("AntiguedadSupervisor", antiguedadSupervisor) :
                new ObjectParameter("AntiguedadSupervisor", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<AdicionarDatos_Result>("AdicionarDatos", identificacionClienteParameter, nombresClienteParameter, apellidosClienteParameter, direccionClienteParameter, telefonoClienteParameter, nroMesaParameter, nombreMesaParameter, reservadaMesaParameter, puestosMesaParameter, idMeseroParameter, platoParameter, valorPlatoParameter, idSupervisorParameter, nombresSupervisorParameter, apellidosSupervisorParameter, edadSupervisorParameter, antiguedadSupervisorParameter);
        }
    }
}
