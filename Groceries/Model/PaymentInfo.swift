//
//  PaymentInfo.swift
//  Groceries
//
//  Created by Gabriel Fanto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct PaymentInfo: View{
    @State var product: Product
    @Binding var listProducts : [Product]
    @State var price: String = ""
    @State var local: String = ""
    @State var quant: String = ""
    
    var body: some View{
        return VStack{
            TextField("Local da Compra", text: $local)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(Color.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Preço do Produto", text: $price)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Quantidade do Produto", text: $quant)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                print("Adding info...")
                var payment = Payment()
                payment.price = (self.price as NSString).doubleValue
                payment.units = (self.quant as NSString).doubleValue
                payment.merchant = self.local
                
                self.product.payments.append(payment)
                self.listProducts.removeAll(where: { product in
                    return self.product.id == product.id
                })
                self.listProducts.append(self.product)
            }) {
                Text("Atualizar informações")
            }
        }
    }
    
}

