//
//  ContinentTableViewController.swift
//  Ios_Labra2_teht1
//
//  Created by Saku Huuha on 03/09/2019.
//  Copyright © 2019 Saku Huuha. All rights reserved.
//

import UIKit

class ContinentTableViewController: UITableViewController {

    let continents = [("Africa", Int64(2)),
                      ("Australia", Int64(20)),
                      ("Antarctica", Int64(0)),
                      ("North America", Int64(500)),
                      ("South America", Int64(40)),
                      ("Asia", Int64(1000)),
                      ("Europe", Int64(300))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
     
    }
    override func tableView(_ tableView:UITableView, didSelectRowAt indexPath: IndexPath){
        let alert = UIAlertController(title: self.continents[indexPath.row].0, message: "Population of " + self.continents[indexPath.row].0 + " is " + String(self.continents[indexPath.row].1), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return continents.count
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = self.continents[indexPath.row].0

    

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
