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
    
    var body: some View {
        VStack {
            Image(product.image).resizable().frame(width: 100, height: 100, alignment: .center)
            Text(product.description)
            Text(product.ean)
            Spacer()
            
            ScrollView {
                ForEach(product.payments) { payment in
                        HStack {
                            Text(payment.merchant)
                            Text("R$ \(payment.price)")
                            Text("\(payment.units) unids")
                            Text("DateFormatter.dateFormat(fromTemplate: 'dd/MM/yyyy', options: 1, locale: .current))")
                        }
                }
            }
            Spacer()
        }
    }
}
