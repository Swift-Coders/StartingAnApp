//
//  WelcomeViewController.swift
//  StartingAnApp
//
//  Created by Garric Nahapetian on 1/27/16.
//  Copyright © 2016 Garric Nahapetian. All rights reserved.
//

// 1) Define your protocol
// 2) Create a property that is an instance of your protocol
// 3) Declare your conformance
// 4) Declare youself as the delegate
// 5) Implement the methods

// 6) call the delegate method


import UIKit

protocol ChildViewControllerDelegate: class {
    
    func childViewController(viewController: ChildViewController, didFinishSelectingCategory category: String)
    
}

class WelcomeViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if segue.identifier == "show" {
          
            
            if let childVC = segue.destinationViewController as? ChildViewController {
             
                childVC.delegate = self
                
            }
            
            
        }
        
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitButtonTapped(sender: UIButton) {

        guard let nameText = nameTextField.text
        
            else { return }
        
        messageLabel.text = "Hello, " + nameText
        
        messageLabel.textColor = UIColor.greenColor()
        
        nameTextField.resignFirstResponder()
        
    }
}

extension WelcomeViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(textField: UITextField) {

        
       
    }
}

extension WelcomeViewController: ChildViewControllerDelegate {
    
    func childViewController(viewController: ChildViewController, didFinishSelectingCategory category: String) {
        
        print("Hey you selected a category: \(category)")
        navigationController?.popViewControllerAnimated(true)
        
    }
    
}










