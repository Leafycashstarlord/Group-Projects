//
//  LoginViewController.swift
//  Parking App
//
//  Created by student on 3/20/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import Foundation
import UIKit
import Firebase


class LoginViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBOutlet var loginUserEmail: UITextField!
    @IBOutlet var loginUserPassword: UITextField!
    
    
    
    
    @IBAction func backToHomeLogin(_ sender: Any) {
        performSegue(withIdentifier: "backToHomeLogin", sender: self)
    }


    
    @IBAction func loginButtonPressed(_ sender: AnyObject) {
        
        Auth.auth().signIn(withEmail: loginUserEmail.text!, password: loginUserPassword.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("User Logged in!")
                self.performSegue(withIdentifier: "logUserIn", sender: self)
            }
        }
        
        
        
        
    }
    
    
    
}



