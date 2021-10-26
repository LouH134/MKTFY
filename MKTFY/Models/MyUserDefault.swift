//
//  MyUserDefault.swift
//  MKTFY
//
//  Created by Louis Harris on 10/25/21.
//

import Foundation

class MyUserDefault{
    
    enum Key: String{
        case Email
        case Token
    }
    
    static let shared: MyUserDefault = {
        return MyUserDefault()
    }()
    
    init(){
        
    }
    
    func setEmail(data: String){
        UserDefaults.standard.set(data, forKey: Key.Email.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func getEmail() -> String?{
        return UserDefaults.standard.string(forKey: Key.Email.rawValue)
    }
    
    func setToken(data: String){
        UserDefaults.standard.set(data, forKey: Key.Token.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func getToken() -> String? {
        return UserDefaults.standard.string(forKey: Key.Token.rawValue)
    }
}
