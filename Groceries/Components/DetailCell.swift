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
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .circular).fill(Color.white).shadow(radius: 2)
            HStack {
                Spacer()
                VStack {
                    Text(self.payment.merchant)
                    Text(DateFormatter.localizedString(from: self.payment.paidAt, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none))
                }
                Spacer()
                VStack {
                    Text("R$ " + String(format: "%.2f", self.payment.price) + " x " + String(self.payment.units))
                    Text("R$ " + String(format: "%.2f", self.payment.price * self.payment.units)).bold()
                }.frame(alignment: .trailing)
                Spacer()
            }
        }
    }
}
