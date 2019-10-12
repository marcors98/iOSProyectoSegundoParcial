//
//  Carro.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Carro {
    
    var placa : String?
    var modelo : String?
    var marca : String?
    var año : String?
    var conductor : String?
    var foto : String?
    var Cargas : [Carga?] = []
    
    
    init(placa : String?, modelo: String?, marca : String?, año : String?, conductor : String?, foto : String?, Cargas : [Carga?] = [])
    {
        self.placa = placa
        self.modelo = modelo
        self.marca = marca
        self.conductor = conductor
        self.año = año
        self.foto = foto
        self.Cargas = Cargas
    }
}
