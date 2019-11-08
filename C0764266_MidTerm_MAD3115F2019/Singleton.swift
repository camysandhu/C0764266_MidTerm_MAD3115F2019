//
//  Singleton.swift
//  C0764266_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Singleton: NSObject
{
    func printdata()
    {
        for i in customerDictionary.values
            {
                print(i.customerFName!)
            }

    }

    private var customerDictionary  = [Int:Customer]()
//    private var billDictionary  = [Int:Bill]()



    private static var obj = Singleton()


    internal static func getInstance() -> Singleton
    {
        return obj
    }

    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1

        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.addingCustomer(customer: temp)
    }



    func addingCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }

    func returnCustomerObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil

    }

    func createCust()
    {
        let c1 = Customer(customerID: 1, customerFName: "Camy", customerLName: "Sandhu", customerEmail: "fmscamy@gmail.com ")
        addingCustomer(customer: c1)
        let c2 = Customer(customerID: 2, customerFName: "Charan", customerLName: "kaur", customerEmail: "ckaur@gmail.com ")
        addingCustomer(customer: c2)
        let c3 = Customer(customerID: 3, customerFName: "Komal", customerLName: "Kaur", customerEmail: "kkaur321@gmail.com ")
        addingCustomer(customer: c3)
        let c4 = Customer(customerID: 4, customerFName: "Harchandbir", customerLName: "Singh", customerEmail: "hc@gmail.com ")
        addingCustomer(customer: c4)

        var valDictionary = ["COSTMERBILL" : Customer(customerID: 1, customerFName: "Camy", customerLName: "Sandhu", customerEmail: "fmscamy@gmail.com ")]

       

    }
//    func addBillToCustomer()
//    {
//        let b1 = Mobile(billId: 1, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 42.5, mobileManufacturerName: "Apple", planName: "BigData", mobileNumber: 647123432, internetGbUsed: 23, minuteUsed: 12)
//
//
//       let b2 = Mobile(billId: 2, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 65.4, mobileManufacturerName: "Samsung", planName: "BigData and Calls", mobileNumber: 9471234545, internetGbUsed: 23, minuteUsed: 12)
//
//
//
//        let b3 = Internet(billId: 1, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 176.8, providerName: "Bell", internetGbUsed: 32)
//
//        let b4 = Internet(billId: 2, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 286.5, providerName: "Freedom", internetGbUsed: 49)
//
//
//
//        let b5 = Hydro(billId: 1, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 122.8, agencyName: "Brampton Energy", unitConsumed: 56)
//
//
//        var b6 = Hydro(billId: 2, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 145.4, agencyName: "Toronto Lines", unitConsumed: 76)
//
//
//
//    }

    func returnCount() -> Int
    {
        return customerDictionary.count
    }
}

