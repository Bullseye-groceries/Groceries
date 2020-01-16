//
//  PaymentInfo.swift
//  Groceries
//
//  Created by Gabriel Fanto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct PaymentInfo: View{
    
    @Binding var isModal: Bool
    @State var payment = Payment()
    @State var price: String
    @State var dateString: String
    private var date: Date
    @State var local: String
    @State var quant: String
    
    var body: some View{
        VStack{
            TextField("Local da Compra", text: $local)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(.gray)
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
                print("Adding product...")
                self.payment.price = (self.price as NSString).doubleValue
                
                self.payment.merchant = self.local
                
                self.payment.units = (self.quant as NSString).doubleValue
                
                
                
            }) {
                Text("Atualizar informações")
            }.frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(.black)
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.yellow
                ]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(30)
            Spacer()
        }
    }
    
}

