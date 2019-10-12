//
//  AgregarCarroController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarCarroController : UIViewController {
    
    @IBAction func doTapAtras(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    var carro : Carro?
    var callbackActualizarTabla: (() -> Void)?
    
    @IBOutlet weak var txtPlaca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    @IBOutlet weak var txtConductor: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agregar Carro"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        
        carro?.placa = txtPlaca.text
        carro?.modelo = txtModelo.text
        carro?.marca = txtMarca.text
        carro?.año = txtAño.text
        carro?.conductor = txtConductor.text
        carro?.foto = "Carro"
        
        callbackActualizarTabla!()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    }
