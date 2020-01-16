//
//  DetailCell.swift
//  Groceries
//
//  Created by Guilherme Deconto on 15/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct DetailCell: View {
    var payment: Payment
    
    var body: some View {
        return HStack {
            VStack {
                Text(self.payment.merchant)
                Text(String(format: "%.4f", self.payment.units) + "unids")
            }
            Spacer()
            VStack {
                Text("R$ " + String(format: "%.2f", self.payment.price))
                Text(DateFormatter.localizedString(from: self.payment.paidAt, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none))
            }
        }
    }
}
