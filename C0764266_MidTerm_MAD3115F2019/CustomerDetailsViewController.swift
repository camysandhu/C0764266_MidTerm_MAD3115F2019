//
//  CustomerDetailsViewController.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {
    var custDetails:Customer?=nil
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var billTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblOne.text = custDetails?.customerEmail
        lblTwo.text = custDetails?.fullName
       
    }
    
    

   

}
