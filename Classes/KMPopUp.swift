//
//  KMPopUp.swift
//  KMPopUp
//
//  Created by Kirollos Maged Youssef Sawerous on 1/23/18.
//

import Foundation
import UIKit

public class KMPopUp {
    //MARK:- this method for message which hide in custom interval time
    //show message with Optional Image and Optonal Alpha for view
    public static func ShowMessageWithDuration(_ delegate : UIViewController , message: String = "",image : String ,duration: Double = 1.0,withAlpha: CGFloat? = 0.8) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPopUpViewController") as! KMPopUpViewController
        popUpVC.message = message
        popUpVC.duration = duration
        popUpVC.Alpha = withAlpha!
        
            popUpVC.messageImage = UIImage(named: image)!
            popUpVC.witImage = true
        
        delegate.addChild(popUpVC)
        popUpVC.view.frame = delegate.view.frame
        delegate.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: delegate)
    }
    
    //MARK:- this method for message which hide on tap action
    //show message with Optional Image and Optonal Alpha for view
    public static func ShowMessage(_ delegate : UIViewController , message: String = "",image : String ,withAlpha: CGFloat? = 0.8) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPopUpViewController") as! KMPopUpViewController
        popUpVC.message = message
        popUpVC.duration = 0.0
        popUpVC.Alpha = withAlpha!
        
            popUpVC.messageImage = UIImage(named: image)!
            popUpVC.witImage = true
        
        delegate.addChild(popUpVC)
        popUpVC.view.frame = delegate.view.frame
        delegate.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: delegate)
    }
    
    //MARK:- this method for message which no hide action
    //show message with Optional Image and Optonal Alpha for view
    public static func ShowScreenPopUp(_ delegate : UIViewController , message: String = "",image : String ,withAlpha: CGFloat? = 0.8) {
        let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "KMPopUpViewController") as! KMPopUpViewController
        popUpVC.message = message
        popUpVC.duration = -1.0
        popUpVC.Alpha = withAlpha!
            popUpVC.messageImage = UIImage(named: image)!
            popUpVC.witImage = true
        delegate.addChild(popUpVC)
        popUpVC.view.frame = delegate.view.frame
        delegate.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParent: delegate)
    }
    
}
