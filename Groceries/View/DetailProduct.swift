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
            ZStack {
                RoundedRectangle(cornerRadius: 45, style: .circular).fill(Color.orange).shadow(radius: 5)
                VStack {
                    Image(product.image).resizable().frame(width: 100, height: 100, alignment: .center).cornerRadius(25)
                    Text(product.description).bold().font(.system(size: 20))
                    Text(product.ean).font(.system(size: 20))
                }.padding(.top, 70).padding(.bottom, 20)
            }.frame(height: 200, alignment: .leading).offset(y: -40)
            Spacer()
            Spacer()
            Text("Compras").font(.headline).frame(alignment: .leading)
            List {
                ForEach(product.payments) { payment in
                    DetailCell(payment: payment)
                }
            }
            }.navigationBarItems(trailing: Image(systemName: "square.and.pencil"))
    }
}
