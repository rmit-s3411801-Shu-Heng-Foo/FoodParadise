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
    var recipes = [Recipe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Filling in data
        self.recipes = [
            Recipe(Title:"Lasagna"),//id=196149
            Recipe(Title:"Chocolate Mint Bars"),//id=1961
            Recipe(Title:"Annie Mae Jones Yeast Rolls"),//id=19643
            Recipe(Title:"Chicken, Mushroom and Pasta Hot Dish"),]//id=196445
        
        
        // Reload table
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Sets the requred number of rows
        return self.recipes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Locate empty cell to fill data in
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        var menu : Recipe
        
        menu = recipes[indexPath.row]
        
        //Set the data for each row
        cell.textLabel!.text = menu.Title
        
        return cell
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let viewController = segue.destinationViewController as ViewController
//        
//        let indexPath = self.tableView.indexPathForSelectedRow()!
//        
//        var LocationInfo : AreaInfo
//        LocationInfo = locationInfo[indexPath.row]
//        //        viewController.locationInfoLocationInfoArray = AreaInfo.
//        
//    }

    
    
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let viewController = segue.destinationViewController as ViewController
//        
//        let indexPath = self.tableView.indexPathForSelectedRow()!
//        
//        var LocationInfo : AreaInfo
//        LocationInfo = locationInfo[indexPath.row]
//        //        viewController.locationInfoLocationInfoArray = AreaInfo.
//        
//    }
    
    
    
    
    
    
    
    
    
    
    
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
