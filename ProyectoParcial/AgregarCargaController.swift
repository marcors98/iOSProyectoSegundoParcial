//
//  AgregarCargaController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarCargaController : UIViewController {
    
    var carro : Carro?
    var callbackActualizarTabla : (() -> Void)?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agregar Carga"
    }
}
