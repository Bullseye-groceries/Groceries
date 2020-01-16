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

}


struct ReceiptView: View {
    var body: some View {
        Text("Receipt View")
    }
    
}

struct Profile: View {
    //@Published
    var listReceipts: [Receipt] = [
        Receipt()
    ]
    var body: some View {
        VStack {
            Spacer()
            Image("carol").resizable().frame(width: 200, height: 200, alignment: .center)
            Text("Carolina Portaluppi")
            Text("CPF: 456.457.460-00")
            Text("14.900 pontos")
            Text("Time do coração: Grêmio F.B.P.A.")
            Spacer()
            VStack {
                HStack {
                    Text("Zaffari da Cabral")
                    Text("08/01/2020")
                    Text("Imported")
                }
            }
            Spacer()
        }
    }
    
}
