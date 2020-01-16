//
//  ReceiptView.swift
//  Groceries
//
//  Created by Guilherme Deconto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct ReceiptCell: View {
    var receipt: Receipt
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .circular).fill(Color.white).shadow(radius: 2)
            HStack {
                Spacer()
                VStack {
                    Text(self.receipt.place)
                    Text("Imported")
                }
                Spacer()
                VStack {
                    Text("R$ " + String(format: "%.2f", self.receipt.value))
                    Text(DateFormatter.localizedString(from: self.receipt.date, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none))
                }.frame(alignment: .trailing)
                Spacer()
            }
            Spacer()
        }
    }
    
}
