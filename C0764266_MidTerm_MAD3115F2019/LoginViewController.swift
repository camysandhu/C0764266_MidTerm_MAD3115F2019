//
//  ViewController.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtUser: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIBarButtonItem!
    //@IBOutlet weak var txtUser: UITextField!
   // @IBOutlet weak var txtPassword: UITextField!
   // @IBOutlet weak var lblVersion: UILabel!
   // @IBOutlet weak var btnLogin: UIButton!
    var uDefault : UserDefaults!
    //@IBOutlet weak var btnRememberMe: UISwitch!
    
//    @IBOutlet weak var btnRememberMe: UILabel!
    @IBOutlet weak var btnRememberMe: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let getdata = Singleton.getInstance()
        getdata.createCust()
        
        uDefault  = UserDefaults.standard
        if let userName = uDefault.value(forKey: "userName"){
            txtUser.text = userName as? String
        }
        
        if let userPassword = uDefault.value(forKey: "userPassword"){
            txtPassword.text = userPassword as? String
        }
    }
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        if readInfoPlist()
        {
            if self.btnRememberMe.isOn{
                self.uDefault.set(txtUser.text, forKey: "userName")
                self.uDefault.set(txtPassword.text, forKey: "userPassword")
            }else{
                self.uDefault.removeObject(forKey: "userName")
                self.uDefault.removeObject(forKey: "userPassword")
            }
            
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let customerListVC=sb.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
            navigationController?.pushViewController(customerListVC, animated: true)
            
        
        }
        else{
            let alert = UIAlertController(title: "Invalid Username Or Password", message: "change username or password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action
                in
                print("Cancel clicked")
            }))
            self.present(alert, animated: true)
            print("invalid username or password")
        }
        
    }
    
    
    
    func readInfoPlist() -> Bool{
        if let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            let usersList = dictionary!["Users"] as! NSArray
            
            for u in usersList
            {
                let user = u as! NSDictionary
                let uname = user["username"]! as! String
                let pwd = user["password"]! as! String
                if uname==txtUser.text! && pwd==txtPassword.text!
                {
                    return true
                }
            }
            
            
        }
        return false
    }
    
    
        
    
    
        
    }
    



