//
//  testVC.swift
//  KMPopUp_Example
//
//  Created by Kirollos Maged on 11/4/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import KMPopUp

class testVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        KMPopUp.ShowScreenPopUp(self, message: "test", image: "test", withAlpha: 0.5)

        // Do any additional setup after loading the view.
    }

}
