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
    @IBOutlet weak var lblTotalAmount: UILabel!
    @IBOutlet weak var lblCustomerID: UILabel!
    @IBOutlet weak var lblOne: UILabel!
    @IBOutlet weak var lblTwo: UILabel!
    @IBOutlet weak var billTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerID.text = custDetails?.customerID?.typeCastString()
        lblOne.text = custDetails?.customerEmail
        lblTwo.text = custDetails?.fullName
        lblTotalAmount.text = custDetails?.totalAmountToPay?.currencyFormatter()
        self.billTable.delegate=self
        self.billTable.dataSource=self
        let rButton = UIBarButtonItem(title: "Add Bill", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.toAddBill))
        self.navigationItem.rightBarButtonItem = rButton
        self.addBill()
        
    }
    
    
    let addBillBtn = UIBarButtonItem()
      
      @objc func toAddBill(){
          self.performSegue(withIdentifier: "addingBillVC", sender: nil)
      }
      
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ((custDetails?.billDictionary.count)!)
   }
    
    private func addBill()
    {
        let btnLogout=UIBarButtonItem(title: "New Bill", style: .done, target: self, action: #selector(CustomerDetailsViewController.addCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnLogout
    }
    
    @objc
    func addCustomer(sender: UIBarButtonItem)
    {
        print("Bill Addded")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addBillsVC = sb1.instantiateViewController(withIdentifier: "addBillVC") as! AddBillViewController
        navigationController?.pushViewController(addBillsVC, animated: true)
        
    }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "billingCell")!
       let currentBill = custDetails!.billDictionary[indexPath.row + 1]
   var detail = ""
       if currentBill?.billType == billTypes.Mobile{
           cell.textLabel?.numberOfLines = 12
           let mobileBill = currentBill as! Mobile
        detail = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturerName) \nPlan Name : \(mobileBill.planName) \nMobile Number : \(mobileBill.mobileNumber) \nInternet used : \(mobileBill.internetGbUsed.data()) \nMinutes Used : \(mobileBill.minuteUsed.minutes()) "
       } else {
           if currentBill?.billType == billTypes.Hydro{
               cell.textLabel?.numberOfLines = 12
               let hydroBill = currentBill as! Hydro
            detail = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agencyName) \nUnit Consumed : \(hydroBill.unitConsumed.unit())"
           } else {
               if currentBill?.billType == billTypes.Internet{
                   cell.textLabel?.numberOfLines = 12
                   let internetBill = currentBill as! Internet
                detail = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetGbUsed.data())"
               }
           }
       }
    cell.textLabel?.text = "Bill ID : \(String(describing: currentBill!.billId)) \nBill Date : \(String(describing: currentBill!.billDate.formattedDate())) \nBill Total : \(String(describing: currentBill!.totalBillAmount.currencyFormatter())) \(detail)"
       return cell
   }


   

}
