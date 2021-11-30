//
//  NetworkManager.swift
//  MKTFY
//
//  Created by Louis Harris on 10/28/21.
//

import Foundation
import Auth0
import SwiftKeychainWrapper
import Alamofire

class NetworkManager{
    static let shared: NetworkManager = {
        return NetworkManager()
    }()
    var isLoading = false
    var email: String?
    var password: String?
    
    init(){
        isLoading = true
    }
   
    func login(email: String, password: String, completion: @escaping (Error?) -> Void){
        Auth0.authentication()
                    .login(
                        usernameOrEmail: email,
                        password: password,
                        realm: "Username-Password-Authentication",
                        scope: "openid profile offline_access")
                     .start { result in

                         switch result {
                         case .success(let credentials):
                            print("Access Token: \(credentials.accessToken ?? "")   Refresh Token:  \(credentials.refreshToken ?? "")")

                            KeychainWrapper.standard.set(credentials.accessToken ?? "", forKey: Key.refresh_Token.rawValue)
                             completion(nil)
                         case .failure(let error):
                            print("Failed with \(error)")
                             completion(error)
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
    
    func changePassword(email: String){
        Auth0.authentication()
            .resetPassword(email: email, connection: "Username-Password-Authentication")
                     .start { result in

                         switch result {
                         case .success():
                             print("Success")
                             break
                         case .failure(let error):
                            print("Failed with \(error)")
                         }
                     }
    }
    
    func saveUser(){
//        Auth0.authentication().createUser(email: <#T##String#>, password: <#T##String#>, connection: <#T##String#>)
    }
    
    
}
