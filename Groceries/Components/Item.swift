//
//  Item.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct Item: View {
    
    var product: Product
    
    var body: some View {
        
        return HStack {
            Image(product.image).resizable().frame(width: 50, height: 50)
            Spacer()
            NavigationLink(destination: DetailProduct(product: product)) {
                VStack {
                    Text(product.description).bold().font(.system(size: 20))
                    Spacer()
                    Text("RS 13.77")
                }
                
            }
        }
    }
}
