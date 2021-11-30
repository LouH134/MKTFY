//
//  CustomEntryFieldView.swift
//  MKTFY
//
//  Created by Louis Harris on 10/12/21.
//

import UIKit

@IBDesignable
class EntryView: UIView, UITextFieldDelegate {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtEntry: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    @IBOutlet weak var lblError: UILabel!
    
    var view: UIView!
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "EntryView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        
        view.backgroundColor = .clear
        addSubview(view)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        xibSetup()
    }
    private func setupUI() {
    }
    
    @IBInspectable var title:String = "Title" {
        didSet {
            lblTitle.text = title
        }
    }
    
    @IBInspectable var lblErorrTitle: String = "Title"{
        didSet{
            lblError.text = lblErorrTitle
        }
    }
    
    @IBInspectable var placeHolderTxt: String = "PlaceHolder Text"{
        didSet{
            txtEntry.placeholder = placeHolderTxt
        }
    }
    
    @IBInspectable var hideBtn: Bool = true{
        didSet{
            btnShowPassword.isHidden = hideBtn
        }
    }
    
    @IBInspectable var hideLbl: Bool = true{
        didSet{
            lblError.isHidden = hideLbl
        }
    }
    
    @IBAction func showPWDPressed(_ sender: Any) {
        if txtEntry.isSecureTextEntry{
            btnShowPassword.setTitle("Hide", for: .normal)
        }else{
            btnShowPassword.setTitle("Show", for: .normal)
        }
        
        txtEntry.isSecureTextEntry.toggle()
    }
    
    
    
}
