//
//  DoneViewController.swift
//  KMPopUp
//
//  Created by Kirollos Maged Youssef Sawerous on 1/23/18.
//

import UIKit

class KMPoUpViewController: UIViewController {

    weak var timer: Timer?
    var message: String = "Some Text"
    var duration: Double = 1.0
    var messageImage = UIImage()
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MessageImage.image = messageImage
        self.view.addSubview(MessageImage)
        self.view.addSubview(messageLable)
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        if #available(iOS 9.0, *) {
            setupLayoute()
        } else {
            // Fallback on earlier versions
        }
        
        messageLable.text = message
        showAnimate()
        if duration == 0.0 {
            self.view.addTapGesture(tapNumber: 1, target: self, action: #selector(TabAction))
        } else {
            if #available(iOS 10.0, *) {
                startTimer()
                
            } else {
                // Fallback on earlier versions
            }
        }
        // Do any additional setup after loading the view.
    }
    
    @available(iOS 9.0, *)
    func setupLayoute() {
        
        MessageImage.widthAnchor.constraint(equalToConstant: 230).isActive = true
        MessageImage.heightAnchor.constraint(equalToConstant: 230).isActive = true
        MessageImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        MessageImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        messageLable.topAnchor.constraint(equalTo: MessageImage.bottomAnchor, constant: 16).isActive = true
        messageLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        messageLable.widthAnchor.constraint(equalToConstant: 230).isActive = true
        
    }
    
    @objc func TabAction() {
        removeAnimation()
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

}

extension UIView {
    
    func addTapGesture(tapNumber : Int, target: Any , action : Selector) {
        
        let tap = UITapGestureRecognizer(target: target, action: action)
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
        
    }
}
