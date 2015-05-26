//
//  MenuTableViewController.swift
//  FoodParadise
//
//  Created by Henry Foo on 25/05/2015.
//  Copyright (c) 2015 RMIT. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
   
    //let API_KEY :String = "?api_key= dvxZrB702s49D3kzm6xbrcMC860Dp68q"

    
    //Setup array for Menu
    var myMenuList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Filling in data
        self.myMenuList = [
            Menu(Title: "Lasagna"),
            Menu(Title: "Name2"),
            Menu(Title: "Name3"),
            Menu(Title: "Name4")]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.myMenuList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Find an empty cell to use
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        var menu : Menu
        
        //Set appropriate array
        menu = menu[indexPath.row]
        
        
        //Set up the Cell Data
        cell.textLabel!.text = menu.Title
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("bookingDetail", sender: tableView)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let daysTableViewController = segue.destinationViewController as DayTableViewController
        
        if isSearchCells == "Yes" {
            //Searched next page
            let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
            
            
            
        } else if isSearchCells == "No" {
            //Non search next page
            let indexPath = self.tableView.indexPathForSelectedRow()!
            
            var DaysArray : Day
            DaysArray = daysArray[indexPath.row]
            daysTableViewController.DayArray = DaysArray.days
            
        }
    }
    
    
    
    
    
    
    
    

    // MARK: - Table view data source


    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
