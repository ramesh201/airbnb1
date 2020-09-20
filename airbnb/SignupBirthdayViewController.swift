//
//  SignupBirthdayViewController.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/17/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import UIKit

class SignupBirthdayViewController: UIViewController {

    @IBOutlet var txtBirthday: UITextField!
    @IBOutlet var btnNxt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupElements()
        
    }
    
    func setupElements(){
        Utilities.styleTextField(txtBirthday)
        btnNxt.layer.cornerRadius = btnNxt.frame.height * 0.50
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
