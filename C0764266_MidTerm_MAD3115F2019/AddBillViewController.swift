//
//  AddBillViewController.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController {

    var tempcust : Customer?
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var segmentBill: UISegmentedControl!
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showingDatePicker()
        let rightButton = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(   self.savingBill))
        self.navigationItem.rightBarButtonItem = rightButton
       
        self.txtBillDate.resignFirstResponder()
    }
    func showingDatePicker(){
           
           datePicker.datePickerMode = .date
           
           let toolbar = UIToolbar();
           toolbar.sizeToFit()
           let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
           let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
           let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelingDatePicker));
           
           toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
           
           txtBillDate.inputAccessoryView = toolbar
           txtBillDate.inputView = datePicker
           
       }
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtBillDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelingDatePicker(){
        self.view.endEditing(true)
    }
    
    @objc func savingBill(sender: UIBarButtonItem)
    {
        
      //  let dictSize = Customer.activeCustomer.billDictionary.count
        let idRandomly = Int.random(in: 0..<1000)
        let billamount = Double(txtBillAmount.text!)
        
        tempcust!.addbill(billId: idRandomly, billDate: datePicker.date, billType: billTypes.Mobile, totalBillAmount: billamount!)
        for i in (tempcust?.billDictionary.keys)!
        {
        print(i)
        }
     //   let passBill = Mobile(billId: idRandomly, billDate: datePicker.date, billType: billTypes.Mobile, totalBillAmount: 12, mobileManufacturerName: "Freedom", planName: "Unlimited Voice", mobileNumber: 98732343234, internetGbUsed : 23, minuteUsed: 34)
       // let convertBill = passBill as Bill
        //Customer.activeCustomer.billDictionary.updateValue( convertBill, forKey: dictSize + 1)
        self.navigationController?.popViewController(animated: true)
    }
       @IBAction func segmentBillType(_ sender: UISegmentedControl) {
           switch sender.selectedSegmentIndex {
           case 0:
               print("Mobile")
               
           case 1:
               print("Internet")
               
           case 2:

            print("Hydro")
            
           default:
            print("Mobile")
        }
    }
    
    
    
    
    
}
