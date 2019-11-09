//
//  Extension_Currency.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension Double
{
    public func currencyFormatter() -> String
    {
       return String.init(format: "$%0.2f", self)
    }
}
