//
//  Hydro.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var unitConsumed: Int
    
     init(billId: Int, billDate: Date, billType: billTypes, totalBillAmount: Double, agencyName: String, unitConsumed: Int)
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
