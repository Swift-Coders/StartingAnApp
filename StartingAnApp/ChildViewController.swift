//
//  ChildViewController.swift
//  StartingAnApp
//
//  Created by Garric Nahapetian on 2/3/16.
//  Copyright © 2016 Garric Nahapetian. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    weak var delegate: ChildViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func doneButtonTapped(sender: UIButton) {
        
        print("hi button")
        
        delegate?.childViewController(self, didFinishSelectingCategory: "Party!")
        
    }
   
}
