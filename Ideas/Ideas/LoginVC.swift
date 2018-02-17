//
//  ViewController.swift
//  Ideas
//
//  Created by Ahmet Oğuzlu on 11/02/18.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: Properties
    
    
    @IBOutlet weak var headerHeightConstraint: NSLayoutConstraint!
    //This allows for logins depending on variation in constraints
    
    @IBOutlet weak var viewName: UIView!
    //This correlates to an adjusted UIView allowing for button handling
    
    @IBAction func viewTapped(_ sender: Any) { }
    
    //This function permits the file to access the tapped button and the subsequent response
    
    // Mark: Actions
    @IBAction func signUpButton(sender: UIButton) {
//        Connected to sign up button accurately
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

