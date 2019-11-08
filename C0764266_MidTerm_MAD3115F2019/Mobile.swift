//
//  Mobile.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Mobile: Bill
{
    var mobileManufacturerName: String
    var planName: String
    var mobileNumber: Int
    var internetGbUsed: Int
    var minuteUsed: Int
    
    init(billId: Int, billDate: Date, billType: billTypes, totalBillAmount: Double, mobileManufacturerName: String, planName: String, mobileNumber: Int, internetGbUsed: Int, minuteUsed: Int)
        {
            self.mobileManufacturerName = mobileManufacturerName
            self.planName = planName
            self.mobileNumber = mobileNumber
            self.internetGbUsed = internetGbUsed
            self.minuteUsed = minuteUsed
            
            super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
            }
    

}
