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
            Product(description: "Molho de Tomate Quero Tradicional 340g", image: "tomato", ean: "71231268312361",
                    payments: [
                Payment(merchant: "Carrefour", price: 2.99, units: 2, paidAt: Date.init()),
                Payment(merchant: "Zaffari da Cristovao", price: 3.55, units: 3, paidAt: Date.init()),
            ], suggestedPrice: 2.99),
            Product(description: "Cebola-roxa kg", image: "tomato", ean: "7896202900759", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 2.95, units: 0.8, paidAt: Date.init()),
                    
            ], suggestedPrice: 2.95),
            Product(description: "Leite de coco Ducoco 200 ml", image: "tomato", ean: "71231268312361hsj", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 3.75, units: 1, paidAt: Date.init()),
                
            ], suggestedPrice: 3.75),
            Product(description: "Molho de Tomate Quero Tradicional 1kg", image: "tomato", ean: "71231268312361hsj", payments: [], suggestedPrice: 2.99),
    ]
    
}
