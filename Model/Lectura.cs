//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lectura
    {
        public int IdLectura { get; set; }
        public int IdMedidor { get; set; }
        public int IdUsuario { get; set; }
        public string Consumo { get; set; }
        public Nullable<System.DateTime> FechaLectura { get; set; }
    
        public virtual Medidor Medidor { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}
