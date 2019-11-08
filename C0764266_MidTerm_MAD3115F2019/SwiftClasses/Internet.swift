//
//  Internet.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Internet: Bill
{
    var providerName: String
    var internetGbUsed: Int
    
    init(billId: Int, billDate: Date, billType: billTypes, totalBillAmount: Double, providerName: String, internetGbUsed: Int)
    {
        self.providerName = providerName
        self.internetGbUsed = internetGbUsed
        
        super.init(billId: billId, billDate: Date(), billType: billType, totalBillAmount: totalBillAmount)
    }
    

}
