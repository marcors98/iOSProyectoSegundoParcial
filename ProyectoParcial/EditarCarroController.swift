//
//  EditarCarroController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarCarroController : UIViewController {
    
    var carro : Carro?
    var callbackActualizarTabla: (() -> Void)?
    
    @IBOutlet weak var txtPlaca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    @IBOutlet weak var txtConductor: UITextField!
    @IBOutlet weak var btnGuardar: UIButton!
    
    
    override func viewDidLoad() {
        self.title = "Detalles del carro"
        
        txtPlaca.text = carro!.placa
        txtModelo.text = carro!.modelo
        txtMarca.text = carro!.marca
        txtAño.text = carro!.año
        txtConductor.text = carro!.conductor
        
    }
    @IBAction func ActualizarTextFields(_ sender: Any) {
        txtPlaca.isEnabled = true
        txtModelo.isEnabled = true
        txtMarca.isEnabled = true
        txtAño.isEnabled = true
        txtConductor.isEnabled = true
        btnGuardar.isEnabled = true
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        
        carro?.placa = txtPlaca.text
        carro?.modelo = txtModelo.text
        carro?.marca = txtMarca.text
        carro?.año = txtAño.text
        carro?.conductor = txtConductor.text
        
        callbackActualizarTabla!()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
