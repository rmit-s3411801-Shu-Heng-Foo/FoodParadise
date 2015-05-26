//
//  SignUpViewController.swift
//  FoodParadise
//
//  Created by Henry Foo on 14/05/2015.
//  Copyright (c) 2015 RMIT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var usernameTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var confirmTxt: UITextField!
    
    @IBOutlet weak var signup: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func signUpTapped(sender: AnyObject) {
        
        //Storing the 3 variables
        let username = usernameTxt.text;
        let password = passwordTxt.text;
        let confirm = confirmTxt.text;
       
        
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
        NSUserDefaults.standardUserDefaults().setObject(username, forKey: "username");
        
        
        //Send to successful login page
        
        
        

        
        
//        
//        //Check for empty fields
//        if(username.isEqualToString("") || password.isEqualToString("")){
//            
//        //Create an alert message
//            var alertView:UIAlertView = UIAlertView()
//            alertView.title = "!Error!"
//            alertView.message = "Please enter all your details again."
//            alertView.delegate = self
//            alertView.addButtonWithTitle("Retry")
//            alertView.show()
//            
//        //Check for password match
//        }else if(!password.isEqual(confirm_password)) {
//            
//            var alertView:UIAlertView = UIAlertView()
//            alertView.title = "!Error!"
//            alertView.message = "Passwords do not match"
//            alertView.delegate = self
//            alertView.addButtonWithTitle("Retry")
//            alertView.show()
//            
//        //Successful Sign-Up, Storing the data
//        }else{
//            
//            //Store the 3 variables in "post"
//            var post:NSString = "username=\(username)&password=\(password)&c_password=\(confirm_password)"
//            
//            NSLog("PostData: %@",post);
//            
//            var url:NSURL = NSURL(string: "https://dipinkrishna.com/jsonsignup.php")!
//            
//            var postData:NSData = post.dataUsingEncoding(NSASCIIStringEncoding)!
//            
//            var postLength:NSString = String( postData.length )
//            
//            var request:NSMutableURLRequest = NSMutableURLRequest(URL: url)
//            request.HTTPMethod = "POST"
//            request.HTTPBody = postData
//            request.setValue(postLength, forHTTPHeaderField: "Content-Length")
//            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//            request.setValue("application/json", forHTTPHeaderField: "Accept")
//            
//            
//            var reponseError: NSError?
//            var response: NSURLResponse?
//            
//            var urlData: NSData? = NSURLConnection.sendSynchronousRequest(request, returningResponse:&response, error:&reponseError)
//            
//            if( urlData != nil ){
//                let res = response as NSHTTPURLResponse!;
//                
//                NSLog("Response code: %ld", res.statusCode);
//                
//                if(res.statusCode >= 200 && res.statusCode < 300)
//                {
//                    var responseData:NSString  = NSString(data:urlData!, encoding:NSUTF8StringEncoding)!
//                    
//                    NSLog("Response ==> %@", responseData);
//                    
//                    var error: NSError?
//                    
//                    let jsonData:NSDictionary = NSJSONSerialization.JSONObjectWithData(urlData!, options:NSJSONReadingOptions.MutableContainers , error: &error) as NSDictionary
//                    
//                    
//                    let success:NSInteger = jsonData.valueForKey("success") as NSInteger
//                    
//                    //[jsonData[@"success"] integerValue];
//                    
//                    NSLog("Success: %ld", success);
//                    
//                    if(success == 1)
//                    {
//                        NSLog("Successful Sign-Up");
//                        self.dismissViewControllerAnimated(true, completion: nil)
//                    }else{
//                        var error_msg:NSString
//                        
//                        if jsonData["error_message"] as? NSString != nil {
//                            error_msg = jsonData["error_message"] as NSString
//                        }else{
//                            error_msg = "Unknown Error"
//                        }
//                        var alertView:UIAlertView = UIAlertView()
//                        alertView.title = "!Error!"
//                        alertView.message = error_msg
//                        alertView.delegate = self
//                        alertView.addButtonWithTitle("Retry")
//                        alertView.show()
//                        
//                    }
//                    
//                }else{
//                    var alertView:UIAlertView = UIAlertView()
//                    alertView.title = "!Error!"
//                    alertView.message = "Connection Failed"
//                    alertView.delegate = self
//                    alertView.addButtonWithTitle("Retry")
//                    alertView.show()
//                }
//            }else{
//                var alertView:UIAlertView = UIAlertView()
//                alertView.title = "!Error!"
//                alertView.message = "Connection Failure"
//                if let error = reponseError {
//                    alertView.message = (error.localizedDescription)
//                }
//                alertView.delegate = self
//                alertView.addButtonWithTitle("Retry")
//                alertView.show()
//            }
//        }
        
    }
    
    func displayError(errorMessage:String)
    {
        var error = UIAlertController(title: "Error", message: errorMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let continueAction = UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default, handler: nil);
        
        error.addAction(continueAction);
        
        self.presentViewController(error, animated: true, completion: nil);
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



//func displayError(errorMessage:String)
//{
//    var error = UIAlertController(title: "Error", message: errorMessage, preferredStyle: UIAlertControllerStyle.Alert);
//    
//    let continueAction = UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default, handler: nil);
//    
//    error.addAction(continueAction);
//    
//    self.presentViewController(error, animated: true, completion: nil);
//}
//
//
//
//
//func signup(sender : UIButton){
//    var user:String = "User.txt"
//    var pass:String = "Pass.txt"
//    
//    let username = usernameTextField.text;
//    let password = passwordTextField.text;
//    let confirm = confirmTextField.text;
//    
//    //Check for empty text fields
//    if(username.isEmpty || password.isEmpty || confirm.isEmpty)
//    {
//        //Display error message
//        displayError("All fields are required. *");
//        return;
//    }
//    
//    //Check for confirm password match
//    if(password != confirm)
//    {
//        //Display error message
//        displayError("Passwords do not match.");
//        
//        return;
//}
//
////Store user login data
//
//
//
////Send to successful login page
//
//


