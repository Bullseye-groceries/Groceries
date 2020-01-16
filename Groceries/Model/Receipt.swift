//
//  Receipt.swift
//  Groceries
//
//  Created by Marco Mangan on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation

struct Receipt: Identifiable, Hashable {
    var id: UUID = UUID()
    var place: String = ""
    var date: Date = Date.init()
    var value: Double = 0.0
    var imported: Bool = false
}
