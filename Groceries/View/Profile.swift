//
//  Profile.swift
//  Groceries
//
//  Created by Marco Mangan on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation
import SwiftUI

struct Profile: View {
    @Binding var userData: User
    @Binding var listReceipts: [Receipt]
    
    var body: some View {
        VStack {
            Spacer()
            Image(self.userData.image).resizable().frame(width: 300, height: 300, alignment: .center)
            Text(self.userData.name)
            Text("(\(userData.cpf))")
            Text("\(userData.score) pontos")
            Text("Time do coração: \(userData.team)")
            Spacer()
            Text("Notas Fiscais").font(.headline).frame(alignment: .leading)
            
            List {
                ForEach(listReceipts) {r in
                    ReceiptCell(receipt: r)
                }
            }
            Spacer()
        }
    }
    
}
