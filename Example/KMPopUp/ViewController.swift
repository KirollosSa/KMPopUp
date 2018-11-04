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
        KMPopUp.ShowMessageWithDuration(self, message: "Test", image: "test", duration: 1.0)
    }
    
    
    @IBAction func noDuration(_ sender: Any) {
        KMPopUp.ShowMessage(self, message: "test", image: "test")
    }
    @IBAction func Image(_ sender: Any) {
        KMPopUp.ShowMessage(self, message: "", image: "test")
    }
    
    @IBAction func showScreenMessage(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "testVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

