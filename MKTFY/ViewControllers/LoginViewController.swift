//
//  LoginViewController.swift
//  MKTFY
//
//  Created by Louis Harris on 10/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    
  
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //MARK: - IBAction
    
    @IBAction func btnShowPWDPressed(_ sender: Any) {
        if txtPassword.isSecureTextEntry{
            btnShowPassword.setTitle("Hide", for: .normal)
        }else{
            btnShowPassword.setTitle("Show", for: .normal)
        }
        
        txtPassword.isSecureTextEntry.toggle()
        
    }
    
    @IBAction func btnForgotPWDPressed(_ sender: Any) {
        let vc = ForgotPWDViewController.storyboardInstance(storyboardName: "Main")
        self.present(vc, animated: true, completion: nil)
    }
    
    

}
