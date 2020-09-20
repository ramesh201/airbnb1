//
//  SignUpNamesViewController.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/16/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import UIKit

class SignUpNamesViewController: UIViewController {

    @IBOutlet var txtFName: UITextField!
    @IBOutlet var txtLName: UITextField!
    @IBOutlet var btnNxt: UIView!
    @IBOutlet var uiBtnNxt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupElements()
    }
    
    func setupElements(){
        Utilities.styleTextField(txtFName)
        Utilities.styleTextField(txtLName)
        uiBtnNxt.layer.cornerRadius = btnNxt.frame.height * 0.50
        
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
