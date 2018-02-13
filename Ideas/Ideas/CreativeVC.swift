//
//  CreativeVC.swift
//  Ideas
//
//  Created by Ahmet Oğuzlu on 11/02/18.
//  Copyright © 2018 Ahmet Oğuzlu. All rights reserved.
//

import UIKit

class CreativeVC: UIViewController {
    
    // MARK: Properties
    
    
    
    // Mark: Actions
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = UITapGestureRecognizer(target: self, action: Selector(("respond")))
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.left
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.up
        
        self.view.gestureRecognizers = [swipeRight, swipeDown, swipeLeft, swipeUp]
        
        
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) -> Void {
        
        print("actually entered into respond to swipe gesture stack")
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
