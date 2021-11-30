//
//  CreateAccountTableViewCell.swift
//  MKTFY
//
//  Created by Louis Harris on 11/4/21.
//

import UIKit

class CreateAccountTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtEntry: UITextField!
    var item: AccountItem!
    
    var didEndEntry: ((_ text: String) -> Void)?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        txtEntry.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateData(data: AccountItem){
        item = data
        lblTitle.text = data.title
    }
    
    //MARK: - UITextfield Delegate
    func textFieldDidEndEditing(_ textField: UITextField) {
        item.text = textField.text
        self.didEndEntry?(txtEntry.text!)
    }
    
}
