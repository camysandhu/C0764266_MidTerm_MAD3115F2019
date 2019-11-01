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
    
    private func addCustomerButton()
    {
        let btnLogout=UIBarButtonItem(title: "ADD", style: .done, target: self, action: #selector(CustomerListViewController.addCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnLogout
    }
    
    @objc
    func addCustomer(sender: UIBarButtonItem)
    {
        print("Customer Added")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addCustomerVC=sb1.instantiateViewController(identifier: "addCustomerVC") as! AddCustomerViewController
        navigationController?.pushViewController(addCustomerVC, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  
}
