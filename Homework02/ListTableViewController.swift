//
//  ListTableViewController.swift
//  Homework02
//
//  Created by William Sulca Talavera on 06/02/17.
//  Copyright © 2017 Virtualink inc. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    //var selections:Dictionary
    var selections = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selections = [String:String]()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
*/
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let indexPathNombre = IndexPath(row: indexPath.row, section: indexPath.section)
        let firstCell = tableView.cellForRow(at: indexPathNombre)
        print("--> \(firstCell?.textLabel?.text!)")
        
        selections.removeValue(forKey: "\(indexPath.section).\(indexPath.row)")
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPathNombre = IndexPath(row: indexPath.row, section: indexPath.section)
        let firstCell = tableView.cellForRow(at: indexPathNombre)
        
        print("--> \(firstCell?.textLabel?.text!)")
        selections["\(indexPath.section).\(indexPath.row)"] = firstCell?.textLabel?.text!
        
        
        
        
        
        //Seccion 1
        //Fila = 4
        /*
        if indexPath.section == 1 && indexPath.row == 4 {
            print("Cambio de pantalla")
            self.performSegue(withIdentifier: "guardarCampos", sender: self)
        }
        tableView.deselectRow(at: indexPath, animated: false)
        */
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    @IBAction func next(_ sender: UIButton) {
        self.performSegue(withIdentifier: "nextSelected", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let indexPathNombre = IndexPath(row: 0, section: 0)
        //let firstCell = tableView.cellForRow(at: indexPathNombre)
        var text2:String = "";
        for select in selections {
            text2 += "\(select.value), "
        }
        
        if let controllerNext = segue.destination as? ShowTextViewController {
            controllerNext.text = text2
        }
        
        
        
    }
    
    

}
