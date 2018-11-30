//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    private var crayons = Crayon.allTheCrayons
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    
  }


}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
}

extension CrayonViewController: UITableViewDelegate {
    func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
            cell.detailTextLabel?.text = crayon.hex
        return cell
    }
}

