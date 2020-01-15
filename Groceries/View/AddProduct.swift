//
//  Receipt.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct AddProduct: View {
    @Binding var listProducts : [Product]

    @State var product: Product = Product()
    
    var body: some View {
        
        VStack {
            Spacer()
            //TODO: FIXME: Image(product.image).resizable().frame(width: 100, height: 100, alignment: .center)
            
            TextField("Descrição", text: $product.description)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Código do Produto", text: $product.ean)
                .frame(width: 300, height: 60, alignment: .center)
                .foregroundColor(.gray)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Spacer()
            Button(action: {
                print("Adding product...")
                self.listProducts.append(self.product)
            }) {
                Text("Cadastrar produto")
            }.frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(.black)
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.yellow
                ]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(30)
            Spacer()
            }
        }
    
}
