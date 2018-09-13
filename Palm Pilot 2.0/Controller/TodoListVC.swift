//
//  ViewController.swift
//  Palm Pilot 2.0
//
//  Created by Weston Gibler on 9/13/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class TodoListVC: UITableViewController {

    let itemArray = ["Feed Luna", "Kiss Nuzzie", "Take out the trash"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
// Get number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
// Set cell/row position based on index
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
}

