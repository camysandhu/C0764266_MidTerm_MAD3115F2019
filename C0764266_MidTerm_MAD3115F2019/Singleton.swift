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
        self.AddCustomer(customer: temp)
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
}
