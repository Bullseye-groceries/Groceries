//
//  PaymentInfo.swift
//  Groceries
//
//  Created by Gabriel Fanto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct PaymentInfo: View{
    @State var payment = Payment()
    @Binding var price: String
    private var dateString: String
    @Binding private var date: Date
    @Binding var local: String
    @Binding var quant: String
    
    var body: some View{
        VStack{
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
                self.payment.price = (self.price as NSString).doubleValue
                
                self.payment.merchant = self.local
                
                self.payment.units = (self.quant as NSString).doubleValue
                
            }) {
                Text("Atualizar informações")
            }
        }
    }
    
}

