//
//  CustomerDetailsViewController.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var custDetails:Customer?=nil
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var billTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblOne.text = custDetails?.customerEmail
        lblTwo.text = custDetails?.fullName
       self.billTable.delegate=self
              self.billTable.dataSource=self
        let rButton = UIBarButtonItem(title: "Add Bill", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.toAddBill))
        self.navigationItem.rightBarButtonItem = rButton
    }
    
    
    let addBillBtn = UIBarButtonItem()
      
      @objc func toAddBill(){
          self.performSegue(withIdentifier: "addingBillVC", sender: nil)
      }
      
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ((customerdetails?.billDictionary.count)!)
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "billCell")!
       let currentBill = customerdetails!.billDictionary[indexPath.row + 1]
   var detail = ""
       if currentBill?.billType == billTypes.Mobile{
           cell.textLabel?.numberOfLines = 12
           let mobileBill = currentBill as! Mobile
         detail = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturer) \nPlan Name : \(mobileBill.planName) \nMobile Number : \(mobileBill.mobileNumber) \nInternet used : \(mobileBill.internetUsed.data()) \nMinutes Used : \(mobileBill.minuteUsed.minutes()) "
       } else {
           if currentBill?.billType == billTypes.Hydro{
               cell.textLabel?.numberOfLines = 12
               let hydroBill = currentBill as! Hydro
               detail = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agencyName) \nUnit Consumed : \(hydroBill.unitconsumed.unit())"
           } else {
               if currentBill?.billType == billTypes.Internet{
                   cell.textLabel?.numberOfLines = 12
                   let internetBill = currentBill as! Internet
                   detail = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetUsed.data())"
               }
           }
       }
       cell.textLabel?.text = "Bill ID : \(String(describing: currentBill!.Id)) \nBill Date : \(String(describing: currentBill!.billDate.getForamttedDate())) \nBill Total : \(String(describing: currentBill!.totalBillAmount.currency())) \(detail)"
       return cell
   }


   

}
