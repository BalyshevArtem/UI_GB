//
//  GroupsTableViewController.swift
//  UI_GB
//
//  Created by Артем Балышев on 25.01.2021.
//  Copyright © 2021 Артем Балышев. All rights reserved.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    var groupsNameArray = ["First Group", "Second Group", "My Group", "Favourite", "Super", "Another", "Hey", "Hello", "Last", "Not"]
    var groupsImageNameArray = ["vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk", "vk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groupsNameArray.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height / 8
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsTableViewCell
        currentCell.setImageAndText(text: groupsNameArray[indexPath.row], image: UIImage(named: groupsImageNameArray[indexPath.row]) ?? UIImage(named: "vk")!)

        return currentCell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        guard segue.identifier == "addGroup" else {
            return
        }
        guard let sourceVC = segue.source as? AvailableGroupTableVC else {
            return
        }
        guard let indexPath = sourceVC.tableView.indexPathForSelectedRow else {
            return
        }
        
        let newGroup = sourceVC.groupsNameArray[indexPath.row]
        
        if !groupsNameArray.contains(newGroup) {
            groupsNameArray.append(newGroup)
            tableView.reloadData()
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            groupsNameArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

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
