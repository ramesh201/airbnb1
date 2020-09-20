//
//  Extentions.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/17/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import Foundation

extension String {
    enum ValidityType{
        case password
    }
    enum Regex:String{
        case password = "fg"
    }
    
    func isValid(_ validityType: ValidityType) -> Bool {
    let format = "Self matches"
    var regex = ""
    
    switch validityType{
    case .password:
        regex = Regex.password.rawValue
    
    }
    return NSPredicate(format:format,regex).evaluate(with:self)
    }
    
    func validpassword(mypassword : String) -> Bool
    {

        let passwordreg =  ("(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z])(?=.*[@#$%^&*]).{8,}")
        let passwordtesting = NSPredicate(format: "SELF MATCHES %@", passwordreg)
        return passwordtesting.evaluate(with: mypassword)
    }
    
}
