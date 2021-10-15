//
//  CustomTextView.swift
//  MKTFY
//
//  Created by Louis Harris on 10/14/21.
//

import UIKit

@IBDesignable
class CustomTextView: UITextView {
    
    @IBInspectable var inset: CGFloat = 0

        func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.insetBy(dx: inset, dy: inset)
        }

         func editingRect(forBounds bounds: CGRect) -> CGRect {
            return textRect(forBounds: bounds)
        }
    
//    struct Constants{
//    static let sidePadding: CGFloat = 10
//        static let topPadding: CGFloat = 8
//    }
//
//     func textRect(forBounds bounds: CGRect) -> CGRect {
//        return CGRect(
//            x: bounds.origin.x + Constants.sidePadding,
//            y: bounds.origin.y + Constants.topPadding,
//            width: bounds.size.width - Constants.sidePadding * 2,
//            height: bounds.size.height - Constants.topPadding * 2
//        )
//    }
//
//     func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return self.textRect(forBounds: bounds)
//    }

}
