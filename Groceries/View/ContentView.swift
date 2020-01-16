//
//  ContentView.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var content : ContentData
    var body: some View {
        TabView {
            Home(listProducts: $content.listProducts)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Produtos")
            }
            Profile(userData: $content.userData, listReceipts: $content.listReceipts)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Perfil")
            }
        }.accentColor(Color.orange)
    }
}
