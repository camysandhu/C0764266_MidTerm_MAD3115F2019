//
//  Extension_Date.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


extension Date
{
    public func formattedDate() -> String
    {
        //https://nsscreencast.com/episodes/367-dates-and-times
        
//        let input = "12/10/2018"
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MM/dd/yyyy"
//        if let date = formatter.date(from: input) {
//        print(date)  // Prints:  2018-12-10 06:00:00 +0000
            let dateFormatterPrint = DateFormatter()
            dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
            let formattedDate = dateFormatterPrint.string(from: self)
            return formattedDate
       
    }
}
