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
            ZStack {
                RoundedRectangle(cornerRadius: 45, style: .circular).fill(Color.orange).shadow(radius: 5)
                VStack {
                    Spacer()
                    Image(self.userData.image).resizable().frame(width: 300, height: 300, alignment: .center).clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                    Text(self.userData.name)
                    Text("(\(userData.cpf))")
                    Text("\(userData.score) pontos")
                    Text("Time do coração: \(userData.team)")
                }.padding(.top, 80).padding(.bottom, 20)
            }.frame(height: 400, alignment: .leading).offset(y: -40)
            Spacer()
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
