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
        
        return NavigationLink(destination: DetailProduct(product: product)) { HStack {
            Image(systemName: "person")
            Spacer()
            Text(product.description).bold().font(.system(size: 20))
            Spacer()
            Text("RS 13.77")
            }
        }
    }
}
