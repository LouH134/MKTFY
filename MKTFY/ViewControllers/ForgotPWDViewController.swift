//
//  ForgotPWDViewController.swift
//  MKTFY
//
//  Created by Louis Harris on 10/12/21.
//

import UIKit

class ForgotPWDViewController: UIViewController {
    
    @IBOutlet weak var btnSend: CustomButton!
    @IBOutlet weak var emailEntry: EntryView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    //MARK: - IBAction
    @IBAction func sendBtnPressed(_ sender: Any) {
        NetworkManager.shared.changePassword(email: emailEntry.txtEntry.text!)
    }
    
}
