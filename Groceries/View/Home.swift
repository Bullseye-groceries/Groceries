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
    
    @State private var searchTerm : String = ""
    
    init(listProducts: [Product]) {
        UITableView.appearance().separatorStyle = .none
        self.listProducts = listProducts
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
            }.navigationBarTitle(Text("Produtos"), displayMode: .inline)
        }
    }
}

