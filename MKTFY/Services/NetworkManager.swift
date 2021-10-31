//
//  NetworkManager.swift
//  MKTFY
//
//  Created by Louis Harris on 10/28/21.
//

import Foundation
import Auth0

class NetworkManager{
    static let shared: NetworkManager = {
        return NetworkManager()
    }()
    var isLoading = false
    
    init(){
        isLoading = true
    }
    
    func login(){
        Auth0.webAuth().scope("openid profile").audience("https://dev-zkebe3xe.us.auth0.com/userinfo").start{ result in
            switch result{
            case.failure(let error):
                print("Error: \(error)")
            case .success(let credentials):
                print("Crendentials: \(credentials)")
            }
        }
    }
    
    func logout(){
        Auth0.webAuth().clearSession(federated: false) { result in
            if result{
                //session cleared
            }
            
        }
    }
}
