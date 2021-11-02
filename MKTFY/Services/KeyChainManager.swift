//
//  KeyChainManager.swift
//  MKTFY
//
//  Created by Louis Harris on 11/1/21.
//

import Foundation
import SwiftKeychainWrapper

class KeyChainManager{
    static let shared: KeyChainManager = {
        return KeyChainManager()
    }()
    var password: String?
    var email: String?
    enum Key: String{
        case password = "Password"
        case email = "Email"
    }
    
    func savePassword(password: String){
        KeychainWrapper.standard.set(password, forKey: Key.password.rawValue)
    }
    
    func saveEmail(email: String){
        KeychainWrapper.standard.set(email, forKey: Key.email.rawValue)
    }
}
