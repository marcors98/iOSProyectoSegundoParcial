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
    
    var placa : String?
    var callbackActualizarTabla : ((Carga) -> Void)?
    @IBOutlet weak var txtCantidad: UITextField!
    @IBOutlet weak var txtLitros: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agregar Carga"
    }
    
    @IBAction func doTapGuardarNuevaCarga(_ sender: Any) {
        let carga = Carga(cantidad: txtCantidad.text, litros: txtLitros.text)
        callbackActualizarTabla!(carga)
        
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
