//
//  ViewController.swift
//  FoodParadise
//
//  Created by Henry Foo on 13/05/2015.
//  Copyright (c) 2015 RMIT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var signUp: UIButton!

    
    @IBOutlet var usernameText: UITextField!
    
    @IBOutlet var passwordTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func signInTapped(sender: UIButton) {
        //Authenticate the login
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

