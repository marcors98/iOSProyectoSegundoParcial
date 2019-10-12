//
//  ViewController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tv_Carros: UITableView!
    var carros : [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Carros"
        
        carros.append(Carro(placa: "MARS98", modelo: "Sierra", marca: "GMC", año: "2018", conductor: "Marco Rodriguez", foto: "Carro", cantidad: ["[$400]"], litros: ["[20]"]))
        carros.append(Carro(placa: "3LPL3BE", modelo: "Sierra", marca: "GMC", año: "1998", conductor: "Cristian Soto", foto: "Carro", cantidad: ["[$4400]"], litros: ["[220]"]))
        carros.append(Carro(placa: "L4L3NA", modelo: "Five Hundred", marca: "Ford", año: "2005", conductor: "Aaron Quezada", foto: "Carro", cantidad: ["[$1000]"], litros: ["[50]"]))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CeldaCarroController 
        
        celda?.lblPlaca.text = carros[indexPath.row].placa
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblMarca.text = carros[indexPath.row].marca
        celda?.lblAño.text = carros[indexPath.row].año
        celda?.lblConductor.text =  carros[indexPath.row].conductor
        celda?.imgCarro.image = UIImage(named: carros[indexPath.row].foto!)
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func recargarTabla() {
        tv_Carros.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNuevo" {
            let destino = segue.destination as? AgregarCarroController
            
            carros.append(Carro(placa: "", modelo: "", marca: "", año: "", conductor: "", foto: "", cantidad: [""], litros: [""]))
            
            destino?.carro = carros[carros.count - 1]
            
            destino?.callbackActualizarTabla = recargarTabla
        }
        else
            if segue.identifier == "goToEditar" {
                let destino = segue.destination as? EditarCarroController
                
                destino?.carro = carros[tv_Carros.indexPathForSelectedRow!.row]
                
                destino?.callbackActualizarTabla = recargarTabla
        }
    }
    

    
}

