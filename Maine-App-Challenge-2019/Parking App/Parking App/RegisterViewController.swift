//
//  RegisterViewController.swift
//  Parking App
//
//  Created by student on 3/20/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet var userEmailText: UITextField!
    @IBOutlet var userPasswordText: UITextField!
    
    

    @IBAction func backToHomeRegister(_ sender: Any) {
        performSegue(withIdentifier: "backToHomeRegister", sender: self)
    }
    

    @IBAction func registerButtonPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: userEmailText.text!, password: userPasswordText.text!) { (user, error) in
            if error != nil{
                print(error!)
            } else {
                print("User Created!")
                self.performSegue(withIdentifier: "backToHomeRegister", sender: self)
            }
        }
    }
    
    
    
    
    
}
