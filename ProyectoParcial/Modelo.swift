//
//  Modelo.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/9/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Modelo_Autos {
    var Placa: String
    var Conductor: String?
    var Marca: String?
    var Modelo: String?
    var Año: String?
    
    init(Placa : String, Conductor : String?, Marca : String?, Modelo : String?, Año : String? )
    
        self.Placa = Placa
    
    if let M_conductor = Conductor{
        self.Conductor = M_conductor
    }
    
    if let M_Marca = Marca{
        self.Marca = M_Marca
    }
    
    if let M_Modelo = Modelo{
        self.Modelo = M_Modelo
    }
    
    if let M_Año = Año{
        self.Año = M_Año
    }
    }
}
