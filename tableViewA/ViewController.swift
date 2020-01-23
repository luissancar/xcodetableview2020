//
//  ViewController.swift
//  tableViewA
//
//  Created by Luis José Sánchez Carrasco on 22/01/2020.
//  Copyright © 2020 Luis José Sánchez Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let datos:[[String]]=[["Uno","Dos","Tres"],
                          ["A","B","C"]
                          ]
    let subtitu:[[String]]=[["Sub Uno","Sub Dos","Sub Tres"],
                          ["Sub A","Sub B","Sub C"]
                        ]
    let headers:[String]=["Números","Letras"]
    let pie:[String]=["Pie Números","Pie Letras"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return pie[section]
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return datos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellController
        cell.label?.text=datos[indexPath.section][indexPath.row]
  
        return cell
    }


}

