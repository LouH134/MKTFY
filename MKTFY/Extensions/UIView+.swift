//
//  UIView+.swift
//  MKTFY
//
//  Created by Louis Harris on 10/25/21.
//

import Foundation
import UIKit

extension UIView{
    var parentViewController: UIViewController?{
        var parentResponder: UIResponder? = self
        
        while parentResponder != nil{
            parentResponder = parentResponder!.next
            
            if let viewController = parentResponder as? UIViewController{
                return viewController
            }
        }
        return nil
    }
    
    //MARK: - Button Functions
    
    func dismiss(){
        UIView.animate(withDuration: 0.25, animations: {
            self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.alpha = 0.0;
        }, completion: {(finished : Bool) in
            if (finished){
                self.removeFromSuperview()
            }
        });
   }
    
    
}
