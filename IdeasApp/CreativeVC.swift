//
//  CreativeVC.swift
//  Ideas
//
//  Created by Ahmet Oğuzlu on 11/02/18.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit
import Firebase

class CreativeVC: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var instructions: UIStackView!
    @IBOutlet weak var input: UITextField!
    
    
    // Mark: Actions
    @IBAction func submit(_ sender: Any) {
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        ref.childByAutoId().setValue(input.text)
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

