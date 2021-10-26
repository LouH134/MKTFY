//
//  HeaderView.swift
//  MKTFY
//
//  Created by Louis Harris on 10/19/21.
//

import UIKit

@IBDesignable
class HeaderView: UIView {
    var view: UIView!
    
    
    @IBOutlet weak var btnLeft: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnRight: UIButton!
    
    
    func loadViewFromNib() -> UIView{
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "HeaderView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
    func xibSetup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        
        addSubview(view)
    }

    override init(frame: CGRect){
        super.init(frame: frame)
        
        xibSetup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        
        xibSetup()
    }
    
    //MARK: - IBDesignables
    
    @IBInspectable var hideRightBtn: Bool = true{
        didSet{
            btnRight.isHidden = hideRightBtn
        }
    }
    
    @IBInspectable var hideLeftBtn: Bool = true{
        didSet{
            btnLeft.isHidden = hideLeftBtn
        }
    }
    
    @IBInspectable var setTitle: String = ""{
        didSet{
            lblTitle.text = setTitle
        }
    }
    
    @IBInspectable var leftButtonImage: UIImage = UIImage(){
        didSet{
            btnLeft.setImage(leftButtonImage, for: .normal)
        }
    }
    
    @IBInspectable var titleColor: UIColor = .clear{
        didSet{
            lblTitle.textColor = titleColor
        }
    }
    
    //MARK: - IBAction

    
    @IBAction func btnLeftPressed(_ sender: Any) {
        
    }
    
    
    
}
