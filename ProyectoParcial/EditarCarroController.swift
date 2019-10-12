//
//  EditarCarroController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarCarroController : UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tv_Cargas: UITableView!
    
    var carros : Carro?
    var cargas : [Carga]  = []
    var callbackActualizarTabla: (() -> Void)?
    var Fila : Int?
    
    @IBOutlet weak var txtPlaca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    @IBOutlet weak var txtConductor: UITextField!
    @IBOutlet weak var btnGuardar: UIButton!
   
    
    override func viewDidLoad() {
        self.title = "Detalles del carro"
        
        txtPlaca.text = carros!.placa
        txtModelo.text = carros!.modelo
        txtMarca.text = carros!.marca
        txtAño.text = carros!.año
        txtConductor.text = carros!.conductor
        tv_Cargas.dataSource = self
        tv_Cargas.delegate   = self
       
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
        
        carros?.placa = txtPlaca.text
        carros?.modelo = txtModelo.text
        carros?.marca = txtMarca.text
        carros?.año = txtAño.text
        carros?.conductor = txtConductor.text
        
        callbackActualizarTabla!()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cargas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCargas") as? CeldaCargasController
        
        celda?.lblCantidad.text = cargas[indexPath.row].cantidad
        celda?.lblLitros.text = cargas[indexPath.row].litros
        
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func recargarTabla() {
       tv_Cargas.reloadData()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNuevaCarga"{
            let destino = segue.destination as? AgregarCargaController
            destino?.callbackActualizarTabla = agregar
            destino?.placa = carros?.placa
        }
        
        
    }
    func agregar(carga : Carga){
        cargas.append(carga)
        carros?.Cargas.append(carga)
        tv_Cargas.reloadData()
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.cargas.remove(at: indexPath.row)
            self.carros?.Cargas.remove(at: indexPath.row)
            self.tv_Cargas.reloadData()
        }
    }
   
}
