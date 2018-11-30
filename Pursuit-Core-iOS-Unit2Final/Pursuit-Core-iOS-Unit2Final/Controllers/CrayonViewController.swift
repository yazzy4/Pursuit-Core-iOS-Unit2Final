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
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let CrayonDetailViewController = segue.destination as?
            CrayonDetailViewController else { fatalError("indexPath, DVC nil") }
        let crayon = crayons[indexPath.row]
    CrayonDetailViewController.crayon = crayon
    
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
        let colors = UIColor.init(displayP3Red: CGFloat(crayon.red/255), green:CGFloat(crayon.green/255), blue:CGFloat(crayon.blue/255), alpha: 1.0)
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = colors
    
        return cell
    }
}




