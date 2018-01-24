//
//  KMPoUp.swift
//  KMPopUp
//
//  Created by Kirollos Maged Youssef Sawerous on 1/23/18.
//

import Foundation


public class KMPoUp {
    
    public static func ShowMessageWithDuration(controller : UIViewController , message: String = "",image : UIImage ,duration: Double = 1.0) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPoUpViewController") as! KMPoUpViewController
        popUpVC.message = message
        popUpVC.duration = duration
        popUpVC.messageImage = image
        controller.addChildViewController(popUpVC)
        popUpVC.view.frame = controller.view.frame
        controller.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParentViewController: controller)
        
    }
    
    public static func ShowMessage(controller : UIViewController , message: String = "",image : UIImage ) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPoUpViewController") as! KMPoUpViewController
        popUpVC.message = message
        popUpVC.duration = 0.0
        popUpVC.messageImage = image
        controller.addChildViewController(popUpVC)
        popUpVC.view.frame = controller.view.frame
        controller.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParentViewController: controller)
        
    }
    
}
