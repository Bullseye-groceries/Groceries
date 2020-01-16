//
//  Profile.swift
//  Groceries
//
//  Created by Marco Mangan on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation
import SwiftUI

struct Receipt: Identifiable, Hashable {
    var id: UUID = UUID()
    var place: String = ""
    var date: Date = Date.init()
    var value: Double = 0.0
    var imported: Bool = false
}


struct UserData: Identifiable, Hashable {
    var id: UUID = UUID()
    var image: String = ""
    var name: String = ""
    var cpf: String = ""
    var score: Int = 0
    var team: String = ""
    
}

struct ReceiptView: View {
    var receipt: Receipt
    var body: some View {
        return HStack {
            VStack {
                Text(self.receipt.place)
                Text("Imported")
            }
            Spacer()
            VStack {
                Text("R$ " + String(format: "%.2f", self.receipt.value))
                Text(DateFormatter.localizedString(from: self.receipt.date, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none))
            }
        }    }
    
}

struct Profile: View {

    var userData: UserData = UserData(image: "carol", name: "Carolina Portaluppi", cpf:"456.457.460-00", score: 14900, team: "Grêmio F.B.P.A.")
    
    var listReceipts: [Receipt] = [
        Receipt(place: "Zaffari da Cabral", date: Date.init(), value: 350.29, imported: true),
        Receipt(place: "Zaffari da Cristóvão", date: Date.init(), value: 150.90, imported: true),
        Receipt(place: "Bourbon Ipiranga", date: Date.init(), value: 350.29, imported: true),
        Receipt(place: "Mercadinho Soares", date: Date.init(), value: 350.29, imported: true),
        Receipt(place: "Zaffari Total ", date: Date.init(), value: 350.29, imported: true),
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Image(self.userData.image).resizable().frame(width: 300, height: 300, alignment: .center)
            Text(self.userData.name)
            Text("CPF \(userData.cpf)")
            Text("\(userData.score) pontos")
            Text("Time do coração: \(userData.team)")
            Spacer()
            List {
                ForEach(listReceipts) {r in
                    ReceiptView(receipt: r)
                }
            }
            Spacer()
        }
    }
    
}
