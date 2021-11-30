//
//  CreateAccountViewController.swift
//  MKTFY
//
//  Created by Louis Harris on 11/4/21.
//

import UIKit

class CreateAccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var userSetup: UserInfo?
    var newUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userSetup = UserInfo()
        newUser = User()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "CreateAccountTableViewCell", bundle: nil), forCellReuseIdentifier: "CreateAccountTableViewCell")
        self.tableView.separatorStyle = .none
        self.tableView.reloadData()
    }
    

    //MARK: - Tableview Protocols
    func numberOfSections(in tableView: UITableView) -> Int {
        return userSetup!.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userSetup!.data[section].items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "CreateAccountTableViewCell", for: indexPath) as! CreateAccountTableViewCell
        
        let item = userSetup!.data[indexPath.section].items[indexPath.row]
        cell.updateData(data: item)
//        cell.didEndEntry = {
//            text in
//            if indexPath.section == 0{
//                if indexPath.row == 0{
//                    self.newUser?.firstName = text
//                }
//            }
//
//        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return userSetup!.data[section].title
    }
    
    
    //MARK: - IBAction
    
    @IBAction func btnNextPressed(_ sender: Any) {
        newUser?.firstName =  userSetup?.data[0].items[0].text
        newUser?.lastName = userSetup?.data[0].items[1].text
        newUser?.email = userSetup?.data[0].items[2].text
        newUser?.phone = userSetup?.data[0].items[3].text
        newUser?.country = userSetup?.data[1].items[0].text
        newUser?.city = userSetup?.data[1].items[1].text
        newUser?.address = userSetup?.data[1].items[2].text
        
        
        
        
    }
    
}
