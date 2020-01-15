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
                        Payment(merchant: "Zaffari da Cristóvão", price: 3.55, units: 3, paidAt: Date.init()),
            ], suggestedPrice: 2.99),
            
            Product(description: "Cebola-roxa kg", image: "cebola", ean: "7896202900759", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 2.95, units: 0.812, paidAt: Date.init()),
                Payment(merchant: "Bourbon Ipiranga", price: 3.23, units: 0.534, paidAt: Date.init()),
            ], suggestedPrice: 2.95),
            
            Product(description: "Coco seco kg", image: "coco", ean: "7898318200129", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 5.98, units: 1, paidAt: Date.init()),
                
            ], suggestedPrice: 3.75),
            
            Product(description: "Limão Taiti kg" , image: "limao", ean: "7898945024419", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 5.98, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 5.98),
            
            Product(description: "Manga Palmer kg" , image: "manga", ean: "2000000007946", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 4.97, units: 1.450, paidAt: Date.init()),
            ], suggestedPrice: 4.97),
            
            Product(description: "Filé de Tilápia Congelado Netuno 500g" , image: "tilapia", ean: "2000000007946", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 15.98, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 15.98),
            
            Product(description: "Vinho Chileno Alto Tierruga Reserva 750ml un" , image: "tierruca", ean: "2000000007946", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 22.49, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 22.49),
            
            Product(description: "Pasta integral de Amendoim Amendo Power Crunchy DaColônia 500g" , image: "amendopower", ean: "7898943090911", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 11.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 22.49),
            
            Product(description: "Filé de Salmão kg" , image: "salmao", ean: "700371778125", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 54.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 54.90),
            
            
            Product(description: "Polpa de Fruta Açaí Fino Mais Fruta 400g" , image: "acai", ean: "7898090780123", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 6.79, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 6.79),
            
            // 10
            
            Product(description: "Cerveja Brahma Extra Lager Long Neck 355ml" , image: "brahma", ean: "7898090780123", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 2.79, units: 6, paidAt: Date.init()),
            ], suggestedPrice: 2.79),
            
            Product(description: "Papel Higiênico Folha Dupla Doble 12 x 60m" , image: "papel", ean: "7896233701370", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 23.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 23.90),
            
            
            Product(description: "Limpador Perfumado Ajax 1 Litro un" , image: "ajax", ean: "7896233701370", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 6.70, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 6.70),
            
            Product(description: "Conjunto com Seis Sabonetes Protex 85g" , image: "protex", ean: "7896233701370", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 9.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 9.90 ),
            
            Product(description: "Sandália Feminina 35/40 26370 Ipanema Feel" , image: "ipanema", ean: "7896233701379", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 19.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 19.90 ),
            
            // 15

            Product(description: "Fronha 50 x 70cm Microfibra Studio Altenburg" , image: "fronha", ean: "7896233701372", payments: [
                Payment(merchant: "Zaffari da Cabral", price: 7.90, units: 1, paidAt: Date.init()),
            ], suggestedPrice: 7.90 ),
            
            
            
            
            
    ]
    
}
