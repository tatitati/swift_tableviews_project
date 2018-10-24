//
//  TableViewController.swift
//  table_experiment
//
//  Created by tati on 24/10/2018.
//  Copyright © 2018 tati. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var jokes = ["chicken", "woman", "programme", "elephant"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // HOW MANY SECTIONS?
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // HOW MANY ROWS PER SECTION?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    // WHAT GOES INSIDE?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let cell = UITableViewCell()
        cell.textLabel?.text = jokes[indexPath.row]

        return cell
    }
    
    // ON CLICK IN A ROW....
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        print(selectedJoke)
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    // BEFORE NAVIGATE TO THE OTHER SCREEN THROUGH THE SEGUE...
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            if let jokeSending = sender as? String {
                jokeVC.joke = jokeSending
            }
        }
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
}
