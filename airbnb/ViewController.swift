//
//  ViewController.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/16/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func addButton(_ sender: UIButton) {
    }
    @IBAction func signupBtn(_ sender: UIButton) {
    }
    @IBOutlet var loginBtn: UIButton!
    @IBOutlet var signupBtn: UIButton!
    @IBOutlet var btnNxt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginBtn.layer.cornerRadius = 20
        signupBtn.layer.cornerRadius = 20
        //btnNxt.layer.cornerRadius = btnNxt.frame.height * 0.50
//        btnWhatsYourNameNav.layer.cornerRadius = btnWhatsYourNameNav.frame.height * 0.50
        //configureButton()
    }

    func configureButton()
    {
        /*addButton.layer.cornerRadius = 0.5 * addButton.bounds.size.width
        addButton.layer.borderColor = UIColor(red:0.0/255.0, green:122.0/255.0, blue:255.0/255.0, alpha:1).CGColor as CGColor
        addButton.layer.borderWidth = 2.0
        addButton.clipsToBounds = true*/
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.setImage(UIImage(named:"thumbsUp.png"), for: .normal)
        button.addTarget(self, action: #selector(thumbsUpButtonPressed), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func thumbsUpButtonPressed() {
        print("thumbs up button pressed")
    }
}

