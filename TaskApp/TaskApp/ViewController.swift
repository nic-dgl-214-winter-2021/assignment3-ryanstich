//
//  ViewController.swift
//  TaskApp
//
//  Created by Ryan Stich on 2021-02-02.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var myTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        myTable.delegate = self
        myTable.dataSource = self


        // Do any additional setup after loading the view. //
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    } //
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row > -1 { //
            let fieldcell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
            
            fieldcell.accessoryType = .none
            
            return fieldcell
        }
        
        //
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        cell.accessoryType = .none
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType ==  UITableViewCell.AccessoryType.checkmark { //
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    
    @IBAction func didTapSort() {
        if myTable.isEditing {
            myTable.isEditing = false
        }
        else {
            myTable.isEditing = true
        }
    }
    
    
    }

