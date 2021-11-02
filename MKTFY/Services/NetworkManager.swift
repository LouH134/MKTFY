//
//  NetworkManager.swift
//  MKTFY
//
//  Created by Louis Harris on 10/28/21.
//

import Foundation
import Auth0
import SwiftKeychainWrapper

class NetworkManager{
    static let shared: NetworkManager = {
        return NetworkManager()
    }()
    var isLoading = false
    var username: String?
    var password: String?
    
    init(){
        isLoading = true
    }
    
    func login(username: String, password: String){
        Auth0.authentication()
                    .login(
                        usernameOrEmail: username,
                        password: password,
                        realm: "Username-Password-Authentication",
                        scope: "openid profile offline_access")
                     .start { result in

                         switch result {
                         case .success(let credentials):
                            print("Access Token: \(credentials.accessToken ?? "")   Refresh Token:  \(credentials.refreshToken ?? "")")

                            KeychainWrapper.standard.set(credentials.accessToken ?? "", forKey: Key.refresh_Token.rawValue)
                         case .failure(let error):
                            print("Failed with \(error)")
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
