//
//  Extension_Int.swift
//  C0764266_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

extension Int
{
    public func unit() -> String
{
    return String.init(format: "%d units", self)
    
}
    public func data() -> String
{
    return String.init(format: "%d GB", self)
    }
    public func minutes() -> String
{
    return String.init(format: "%d minutes", self)
    }
    func typeCastString() -> String
    {
        return String(self)
    }
    
}
