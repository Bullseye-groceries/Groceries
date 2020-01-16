//
//  Product.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation

struct Product: Identifiable, Hashable {
    var id: UUID = UUID()
    var description: String = ""
    var image: String = "missing"
    var ean: String = ""
    var payments: [Payment] = []
    var suggestedPrice: Double = 0.0
}
