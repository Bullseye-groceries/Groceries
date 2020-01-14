//
//  ContentData.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation

class ContentData: ObservableObject {
    @Published var listProducts: [Product] =
        [
            Product(description: "Molho de Tomate Quero Tradicional 340g", image: "tomato", ean: "71231268312361hsj", payments: [
                Payment(merchant: "Carrefour", price: 2.99, units: 2, paidAt: Date.init()),
                Payment(merchant: "Zaffari", price: 3.55, units: 1, paidAt: Date.init()),
            ]),
            Product(description: "Molho de Tomate Opa Tradicional 340g", image: "tomato", ean: "71231268312361hsj", payments: []),
            Product(description: "Molho de Tomate Teste Tradicional 340g", image: "tomato", ean: "71231268312361hsj", payments: []),
            Product(description: "Molho de Tomate Quero Tradicional 1kg", image: "tomato", ean: "71231268312361hsj", payments: []),
    ]
    
}
