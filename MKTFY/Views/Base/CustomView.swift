//
//  CustomView.swift
//  MKTFY
//
//  Created by Louis Harris on 10/19/21.
//

import UIKit


@IBDesignable
class CustomView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            round(cornerRadius: cornerRadius)
        }
    }
    
    @IBInspectable var roundTop: CGFloat = 5{
        didSet{
            self.clipsToBounds = true
            self.layer.cornerRadius = roundTop
            
            if #available(iOS 11.0, *){
                self.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
            }else{
                //fall back to earlier version
            }
        }
    }
    
    func round(cornerRadius: CGFloat){
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }

}
