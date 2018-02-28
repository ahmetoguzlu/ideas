//
//  LoginVC.swift
//  IdeasApp
//
//  Created by Ahmet Oğuzlu on 27.02.2018.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    // Mark: Actions
    @IBAction func Login(_ sender: Any) {
        // User login
        Auth.auth().signIn(withEmail: username.text!, password: password.text!) {(user, error) in
        }
    }
    @IBAction func SignUp(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
