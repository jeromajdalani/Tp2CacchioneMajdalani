﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Categoria
    {   
        public Categoria(int id, string desc)
        {
            this.ID = id;
            Descripcion = desc;
        }

        public Categoria() { }
        public int ID { get; set; }
        public string Descripcion { get; set; }
        public override string ToString()
        {
            return Descripcion;
        }
    }
}
