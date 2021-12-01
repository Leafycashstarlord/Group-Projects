//
//  ViewController.swift
//  Parking App
//
//  Created by student on 3/20/19.
//  Copyright © 2019 Team_Yarmouth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func goToRegister(_ sender: Any) {
        performSegue(withIdentifier: "goToRegisterScreen", sender: self)
    }
    
    
    @IBAction func goToLogin(_ sender: Any) {
        performSegue(withIdentifier: "goToLoginScreen", sender: self)
    }
    
    
}

