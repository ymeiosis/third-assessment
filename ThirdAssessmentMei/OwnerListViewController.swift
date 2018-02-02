//
//  OwnerListViewController.swift
//  ThirdAssessment - Mei
//
//  Created by Ying Mei Lum on 02/02/2018.
//  Copyright © 2018 Ying Mei Lum. All rights reserved.
//

import UIKit

class OwnerListViewController: UIViewController, UITableViewDataSource {
    var owners : [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadOwners()
        
    }
    
    func loadOwners() {
        /*
         1. find path for plist file
         2. read contents
         3. populate tableView
         */
        
        guard let path = Bundle.main.path(forResource: "owners", ofType: "plist"),
            let array = NSArray.init(contentsOfFile: path) as? [String] else {return}
        owners = array
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return owners.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = owners[indexPath.row]
        return cell
        
    }

}

