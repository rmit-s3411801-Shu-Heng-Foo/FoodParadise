//
//  SignUpViewController.swift
//  FoodParadise
//
//  Created by Henry Foo on 14/05/2015.
//  Copyright (c) 2015 RMIT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var signup: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func displayError(errorMessage:String)
    {
        var error = UIAlertController(title: "Error", message: errorMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let continueAction = UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default, handler: nil);
        
        error.addAction(continueAction);
        
        self.presentViewController(error, animated: true, completion: nil);
    }
    
    
    
    
    func signup(sender : UIButton){
        var user:String = "User.txt"
        var pass:String = "Pass.txt"
        
        let username = usernameTextField.text;
        let password = passwordTextField.text;
        let confirm = confirmTextField.text;
        
        //Check for empty text fields
        if(username.isEmpty || password.isEmpty || confirm.isEmpty)
        {
            //Display error message
            displayError("All fields are required. *");
            return;
        }
        
        //Check for confirm password match
        if(password != confirm)
        {
            //Display error message
            displayError("Passwords do not match.");
            
            return;
        }
        
        //Store user login data
        
        //Send to successful login page
        
        
        if (user.isEqual(" ")){
            
        }
        
        
        
        
        
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
