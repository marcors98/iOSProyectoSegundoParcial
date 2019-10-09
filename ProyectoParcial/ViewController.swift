//
//  ViewController.swift
//  ProyectoParcial
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tb_Carros: UITableViewCell!
    
    var Lista : [Modelo_Autos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tb_Carros.dataSource = self
        tb_Carros.deledate = self
        Lista = createArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lista.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda") as! Cell_ViewController
        
        let list = Lista[indexPath.row]
        
        celda.set(Modelo : list)
        
        return celda
    }
    
}

