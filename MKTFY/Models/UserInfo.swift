//
//  UserInfo.swift
//  MKTFY
//
//  Created by Louis Harris on 11/5/21.
//

import Foundation

class UserInfo{
//    static let shared: UserInfo = {
//        return UserInfo()
//    }()
    var data: [AccountSection] = []
    
    init(){
        userInfoSetup()
    }
    
    func userInfoSetup(){
        data.append(AccountSection(title: "", items: [AccountItem(title: "First Name"), AccountItem(title: "Last Name"), AccountItem(title: "Email"), AccountItem(title: "Phone")]))
        data.append(AccountSection(title: "Address Information", items: [AccountItem(title: "Country"), AccountItem(title: "City"), AccountItem(title: "Address")]))
    }
    
}
