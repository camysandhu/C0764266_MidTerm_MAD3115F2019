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
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
}
