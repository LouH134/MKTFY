//
//  User.swift
//  MKTFY
//
//  Created by Louis Harris on 11/9/21.
//

import Foundation

class User{
    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
    var country: String?
    var city: String?
    var address: String?
    var password: String?
    
    init(firstName: String, lastName: String, email: String, phone: String, country: String, city: String, address: String, password: String){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.phone = phone
        self.country = country
        self.city = city
        self.address = address
        self.password = password
    }
    
    init(){
        
    }
    
    
    
}
