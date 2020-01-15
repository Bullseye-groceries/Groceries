//
//  Account.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct DetailProduct: View {
    var product: Product
    
    let dateFormat = DateFormatter.dateFormat(fromTemplate: "dd/MM/yyyy", options: 1, locale: .current)
    
    var body: some View {
        VStack {
            Image(product.image).resizable().frame(width: 100, height: 100, alignment: .center)
            Text(product.description)
            Text(product.ean)
            Spacer()
            List {
                ForEach(product.payments) { payment in
                    DetailCell(payment: payment)
                }
            }
        }
    }
}
