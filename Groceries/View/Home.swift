//
//  Home.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct Home: View {
    var listProducts : [Product]

    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(listProducts) { item in
                        Item(product: item)
                    }
                    ForEach(listProducts) { item in
                        Item(product: item)
                    }
                    ForEach(listProducts) { item in
                        Item(product: item)
                    }
                }
            }
        }.navigationBarTitle(Text("Settings")).font(.largeTitle)
    }
}
