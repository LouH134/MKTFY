//
//  CustomTextView.swift
//  MKTFY
//
//  Created by Louis Harris on 10/14/21.
//

import UIKit

//@IBDesignable
class CustomTextField: UITextField {
    
//    @IBInspectable var inset: CGFloat = 0
//
//       override func textRect(forBounds bounds: CGRect) -> CGRect {
//            return bounds.insetBy(dx: inset, dy: inset)
//        }
//
//        override func editingRect(forBounds bounds: CGRect) -> CGRect {
//            return textRect(forBounds: bounds)
//        }
    
    var textPadding = UIEdgeInsets(
            top: 10,
            left: 20,
            bottom: 10,
            right: 100
        )

        override func textRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.textRect(forBounds: bounds)
            return rect.inset(by: textPadding)
        }

        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            let rect = super.editingRect(forBounds: bounds)
            return rect.inset(by: textPadding)
        }

}
