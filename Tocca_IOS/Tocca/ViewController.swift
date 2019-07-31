//
//  ViewController.swift
//  Tocca
//
//  Created by Zhenru on 7/29/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var internalView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var qrCode: UIImageView!
    @IBOutlet weak var scanButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupInternalView()
        setupProfileImage()
        setupQRCode()
        setupButton()
    }
    
    @IBAction func scanButtonTapped(_ sender: UIButton) {
        showToast(message: "This is scan button.")
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        showToast(message: "This is share button.")
    }
    
    // setups
    func setupButton() {
        self.scanButton.layer.cornerRadius = self.scanButton.frame.size.width / 2
        self.scanButton.clipsToBounds = true
        
        self.shareButton.layer.cornerRadius = self.shareButton.frame.size.width / 2
        self.shareButton.clipsToBounds = true
    }
    
    func setupQRCode() {
        self.qrCode.image = #imageLiteral(resourceName: "qrcode")
    }
    
    func setupProfileImage() {
        self.profileImage.layer.cornerRadius = self.profileImage.frame.size.width / 2
        self.profileImage.clipsToBounds = true
        self.profileImage.image = #imageLiteral(resourceName: "jackie")
    }
    
    func setupInternalView() {
        self.internalView.layer.cornerRadius = 25
    }

    
    func showToast(message : String) {
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.maxY - 200, width: 200, height: 40))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = UIFont(name: "", size: 15)
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
}

