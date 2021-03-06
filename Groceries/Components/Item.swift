//
//  Item.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct Item: View {
    @Binding var listProducts : [Product]
    var product: Product
    
    var body: some View {
        
        return ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color.white).shadow(radius: 10)
            HStack {
                Image(product.image).resizable().scaledToFit().frame(width: 50, height: 50).clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                Spacer()
                NavigationLink(destination: DetailProduct(product: product, listProducts: $listProducts)) {
                    VStack {
                        Spacer()
                        Text(product.description).bold().font(.system(size: 20))
                        Spacer()
                        Text("R$ " + String(format:"%.2f", product.suggestedPrice))
                    }
                }
            } .padding(20).multilineTextAlignment(.center)
        }
        .frame(width: nil, height:150).padding(.leading, 20).padding(.trailing, 20).padding(.top, 8)
    }
}
