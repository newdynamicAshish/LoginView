//
//  String.swift
//  LoginView
//
//  Created by Apple on 11/07/24.
//

import Foundation

extension String{
    
    func isValidEmail ()-> Bool {
        
    //    test123@emailc.com -> True
    //    test.com            -> False
        
        let emailValid = try! NSRegularExpression(pattern:"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        
        return emailValid.firstMatch(in: self, range: NSRange(location: 0, length:count)) != nil
        

    }
}
