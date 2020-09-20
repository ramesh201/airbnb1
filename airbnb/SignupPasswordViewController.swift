//
//  SignupPasswordViewController.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/17/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import UIKit

class SignupPasswordViewController: UIViewController {

    //let validityType: String.validpassword = .password
    func validpassword(mypassword : String) -> Bool
    {

        let passwordreg =  ("(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&*]).{8,}")
        let passwordtesting = NSPredicate(format: "SELF MATCHES %@", passwordreg)
        return passwordtesting.evaluate(with: mypassword)
    }
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnNxt: UIButton!
    @IBAction func btnNxtAct(_ sender: UIButton) {
        
        let password = validpassword(mypassword: txtPassword.text!) //get text Field data & checked through the function


        if(password == false)
        {
             print("Valid Password")  //Use to Alert Msg Box
        }
        else
        {
             print("Login Safe")     //Use to Alert Msg Box
        }    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupElements()
        
    }
    
    func setupElements(){
        Utilities.styleTextField(txtPassword)
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
