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
            TextField("EAN", text: $product.ean)
            Spacer()
            Button(action: {
                print("Adding product...")
                self.listProducts.append(self.product)
            }) {
                Text("Cadastrar produto")
            }
            Spacer()
            }
        }
    
}
