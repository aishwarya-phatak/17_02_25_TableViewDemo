//
//  ViewController.swift
//  17_02_25_TableViewDemo
//
//  Created by Vishal Jagtap on 13/03/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var studentsTableView: UITableView!
    var names = ["Suhaan", "Pooja", "Sakshi", "Suchita"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentsTableView.delegate = self
        studentsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.studentsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.backgroundColor = .cyan
        return cell
    }
}
