//
//  DoneViewController.swift
//  KMPopUp
//
//  Created by Kirollos Maged Youssef Sawerous on 1/23/18.
//

import UIKit

class KMPopUpViewController: UIViewController {
    
    //MARK:- Properties
    weak var timer: Timer?
    var message: String = "Some Text"
    var duration: Double = 1.0
    var Alpha: CGFloat = 0.8
    var messageImage = UIImage()
    var witImage : Bool = false
    
    let MessageImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    let messageLable: UILabel = {
        let lab = UILabel()
        lab.text = "Some Text"
        lab.textColor = UIColor.white
        lab.textAlignment = .center
        lab.numberOfLines = 0
        lab.translatesAutoresizingMaskIntoConstraints = false
        return lab
    }()
    let button: UIButton = {
        let b = UIButton()
        b.translatesAutoresizingMaskIntoConstraints = false
        b.titleLabel?.textColor = UIColor.white
        b.backgroundColor = UIColor.gray
        //        b.titleLabel?.text = "Done"
        b.target(forAction: #selector(TabAction), withSender: nil)
        return b
    }()
    
    //MARK:- Viewcontroller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupView()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Helper Methods
    func SetupView() {
        if witImage {
            MessageImage.image = messageImage
            self.view.addSubview(MessageImage)
            self.view.addSubview(messageLable)
            self.view.backgroundColor = UIColor.black.withAlphaComponent(Alpha)
            if #available(iOS 9.0, *) {
                setupLayoute()
            }
        }
        messageLable.text = message
        showAnimate()
        if duration == 0.0 {
            self.view.addTapGesture(tapNumber: 1, target: self, action: #selector(TabAction))
        } else if duration == -1.0 {
            // No Actions neither tap nor time for hide
        } else {
            if #available(iOS 10.0, *) {
                startTimer()
                
            }
        }
    }
    
    @available(iOS 9.0, *)
    func setupLayoute() {
        if witImage {
            MessageImage.widthAnchor.constraint(equalToConstant: 230).isActive = true
            MessageImage.heightAnchor.constraint(equalToConstant: 230).isActive = true
        } else {
            MessageImage.widthAnchor.constraint(equalToConstant: 0).isActive = true
            MessageImage.heightAnchor.constraint(equalToConstant: 0).isActive = true
        }
        MessageImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        MessageImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        messageLable.topAnchor.constraint(equalTo: MessageImage.bottomAnchor, constant: 16).isActive = true
        messageLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        messageLable.widthAnchor.constraint(equalToConstant: 230).isActive = true
        
    }
    
    @available(iOS 10.0, *)
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: true) { [weak self] _ in
            // do something here
            self!.removeAnimation()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    deinit {
        stopTimer()
    }
    
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3 , y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25) {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
    
    func removeAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3 , y: 1.3)
            self.view.alpha = 0.0;
        }) { (finished : Bool) in
            if finished {
                self.view.removeFromSuperview()
            }
        }
    }
    
    //MARK:- Actions
    @objc func TabAction() {
        removeAnimation()
    }
    
}

// MARK:- Tab Action Extension
extension UIView {
    func addTapGesture(tapNumber : Int, target: Any , action : Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
        
    }
}
