//
//  SignUpVC.swift
//  IdeasApp
//
//  Created by Ahmet Oğuzlu on 27.02.2018.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    // Mark: Actions
    @IBAction func SignUp(_ sender: Any) {
        // User sign-up
        Auth.auth().createUser(withEmail: Email.text!, password: Password.text!) {(user, error) in}
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
