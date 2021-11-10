//
//  AccountSection.swift
//  MKTFY
//
//  Created by Louis Harris on 11/5/21.
//

import Foundation

class AccountSection{
    var title: String!
    var items: [AccountItem]!
    
    init(title: String, items: [AccountItem]){
        self.title = title
        self.items = items
    }
}
