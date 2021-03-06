//
//  LoginViewController.swift
//  MKTFY
//
//  Created by Louis Harris on 10/11/21.
//

import UIKit
import SwiftKeychainWrapper
import ProgressHUD

class LoginViewController: UIViewController {
    
  
    @IBOutlet weak var emailEntry: EntryView!
    @IBOutlet weak var passwordEntry: EntryView!
    @IBOutlet weak var btnShowPassword: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let password = KeychainWrapper.standard.string(forKey: KeyChainManager.Key.password.rawValue){
            passwordEntry.txtEntry.text = password
        }
        
        if let email = KeychainWrapper.standard.string(forKey: KeyChainManager.Key.email.rawValue){
            emailEntry.txtEntry.text = email
        }
    }
    

    //MARK: - IBAction
    
    @IBAction func btnShowPWDPressed(_ sender: Any) {
        if passwordEntry.txtEntry.isSecureTextEntry{
            btnShowPassword.setTitle("Hide", for: .normal)
        }else{
            btnShowPassword.setTitle("Show", for: .normal)
        }
        
        passwordEntry.txtEntry.isSecureTextEntry.toggle()
        
    }
    
    @IBAction func btnForgotPWDPressed(_ sender: Any) {
        let vc = ForgotPWDViewController.storyboardInstance(storyboardName: "Main")

        vc.modalPresentationStyle = .fullScreen
        
        self.present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        ProgressHUD.show()
        
        NetworkManager.shared.login(email: emailEntry.txtEntry.text!, password: passwordEntry.txtEntry.text!, completion: {
            error in
            if error == nil{
                ProgressHUD.dismiss()
                KeyChainManager.shared.savePassword(password: self.passwordEntry.txtEntry.text!)
                KeyChainManager.shared.saveEmail(email: self.emailEntry.txtEntry.text!)
                //worked go to dashboard
            }else{
                problemLogingIn()
            }
            
        })
        
        func problemLogingIn(){
            self.emailEntry.txtEntry.layer.borderWidth = 10
            self.emailEntry.txtEntry.layer.borderColor = UIColor.red.cgColor
            self.emailEntry.hideLbl = false
            self.emailEntry.lblErorrTitle = "Your Email is incorrect"
        }
        
    }
    
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        let vc = CreateAccountViewController.storyboardInstance(storyboardName: "Main")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    

}
