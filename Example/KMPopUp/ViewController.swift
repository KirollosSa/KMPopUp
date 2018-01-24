//
//  ViewController.swift
//  KMPopUp
//
//  Created by Kirollos Mage on 01/22/2018.
//  Copyright (c) 2018 Kirollos Mage. All rights reserved.
//

import UIKit
import KMPopUp

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func duration(_ sender: Any) {
        KMPoUp.ShowMessageWithDuration(controller: self, message: "Test", image: #imageLiteral(resourceName: "33"), duration: 1.0)
    }
    
    
    @IBAction func noDuration(_ sender: Any) {
        KMPoUp.ShowMessage(controller: self, message: "test", image: #imageLiteral(resourceName: "33"))
    }
    @IBAction func Image(_ sender: Any) {
        KMPoUp.ShowMessage(controller: self, message: "", image: #imageLiteral(resourceName: "33"))
    }
}

