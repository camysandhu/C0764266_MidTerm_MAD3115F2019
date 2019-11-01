//
//  CustomerListViewController.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController
{
    private func addLogoutButton()
    {
        let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=btnLogout
    }
    
    @objc
    func logout(sender: UIBarButtonItem)
    {
        print("logout")
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  
}
