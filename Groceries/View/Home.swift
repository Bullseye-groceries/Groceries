//
//  Home.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @Binding var listProducts : [Product]
    
    @State private var searchTerm : String = ""
    
    init(listProducts: Binding<[Product]>) {
         UITableView.appearance().separatorStyle = .singleLine
        
        self._listProducts = listProducts
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchTerm)
                List {
                    ForEach(self.listProducts.filter {
                        self.searchTerm.isEmpty ? true : $0.description.localizedStandardContains(self.searchTerm)
                    }, id:\.self) { item in
                        Item(product: item)
                    }
                }
            }.navigationBarTitle(Text("Produtos"), displayMode: .inline).navigationBarItems(trailing:
                NavigationLink(destination: AddProduct(listProducts: self.$listProducts)) {
                    Text("Add Product")
                    }
            )
        }
    }
    
}
