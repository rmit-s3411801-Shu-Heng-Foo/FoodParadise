//
//  FoodDetailViewController.swift
//  FoodParadise
//
//  Created by Henry Foo on 22/05/2015.
//  Copyright (c) 2015 RMIT. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
    
    //Nicks API Key
    let apiKey:String = "?api_key= dvx37962Qnz7wY2uiRTE9gC9PHJ9WzR5"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Recipe fetch from server
    func getRecipeJson() {
        let baseUrl:String = "http://api.bigoven.com/recipe/";
        let recipeID:String = "196149";
        
        var url:String = baseUrl + recipeID + "?api_key=" + apiKey;
        
        //url must match : http://api.bigoven.com/recipe/196149?api_key=dvx37962Qnz7wY2uiRTE9gC9PHJ9WzR5
        
        $.ajax({
            type: "GET",
            dataType: 'json',
            cache: false,
            url: url,
            success: function (data) {
                alert('success');
                console.log(data);
            }
        });
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
