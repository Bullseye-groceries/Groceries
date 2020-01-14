//
//  Payment.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation

struct Payment: Identifiable  {

    
    var id: UUID = UUID()
    var merchant: String = ""
    var price: Double = 0.0
    var units: Double = 0.0
    var paidAt: Date = Date.init()
    
    
}
