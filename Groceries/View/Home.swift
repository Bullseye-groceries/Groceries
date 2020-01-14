//
//  Home.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var listProducts: [Product] =
        [
            Product(description: "Molho de Tomate Quero Tradicional 340g", image: "https://www.clubeextra.com.br/img/uploads/1/413/574413.png?type=product", ean: "71231268312361hsj"),
            Product(description: "Molho de Tomate Opa Tradicional 340g", image: "https://www.clubeextra.com.br/img/uploads/1/413/574413.png?type=product", ean: "71231268312361hsj"),
            Product(description: "Molho de Tomate Teste Tradicional 340g", image: "https://www.clubeextra.com.br/img/uploads/1/413/574413.png?type=product", ean: "71231268312361hsj"),
            Product(description: "Molho de Tomate Quero Tradicional 1kg", image: "https://www.clubeextra.com.br/img/uploads/1/413/574413.png?type=product", ean: "71231268312361hsj")
    ]
    
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
