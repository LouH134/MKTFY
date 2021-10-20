//
//  ViewController+.swift
//  MKTFY
//
//  Created by Louis Harris on 10/19/21.
//

import Foundation
import UIKit

extension UIViewController{
    static func storyboardInstance(storyboardName: String) -> UIViewController{
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: String(describing: self))
    }
}
