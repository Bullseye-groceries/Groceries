//
//  ContentView.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Produtos")
            }
            AddProduct()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Cadastrar")
            }
        }
    }
}
