//
//  DeveloperVC.swift
//  Ideas
//
//  Created by Ahmet Oğuzlu on 11/02/18.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit
import Firebase

class DeveloperVC: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var displayer: UILabel!
    
    
    // Mark: Actions
    @IBAction func generator(_ sender: Any) {
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        // Retrieves all the values from the database, picks a random one to display
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            
            var arr = [String]()
            
            for child in snapshot.children {
                let snap = child as! DataSnapshot
                let value = snap.value
                arr.append(value as! String)
            }
            
            self.displayer.text = arr[Int(arc4random_uniform(UInt32(arr.count)))]
        })
        
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

