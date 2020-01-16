//
//  Account.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI
import SwiftUICharts

struct DetailProduct: View {
    var product: Product
    @Binding var listProducts : [Product]
    @State var isModal: Bool = false
    @State var price = ""
    @State private var date = Date.init()
    @State var local = ""
    @State var quant = ""
    
    let dateFormat = DateFormatter.dateFormat(fromTemplate: "dd/MM/yyyy", options: 1, locale: .current)
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 45, style: .circular).fill(Color.orange).shadow(radius: 5)
                VStack {
                    Image(product.image).resizable().frame(width: 100, height: 100, alignment: .center).clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                    Text(product.description).bold().font(.system(size: 20))
                    Text(product.ean).font(.system(size: 20))
                }.padding(.top, 80).padding(.bottom, 20)
            }.frame(height: 200, alignment: .leading).offset(y: -40)
            Spacer()
            Spacer()
            Text("Compras").font(.headline).frame(alignment: .leading)
            
            ScrollView(.horizontal){
                HStack {
                    List {
                        ForEach(product.payments) { payment in
                            DetailCell(payment: payment)
                        }
                    }.frame(width: 390, height: nil, alignment: .leading).padding(.trailing, 20)
                    BarChartView(data: ChartData(points: getPrices(payment: product.payments)), title: "Title", legend: "Legendary", form: CGSize(width:360, height:360), valueSpecifier: "%.2f").frame(width: 380, height: 100, alignment: .leading)
                }
            }
        }.padding(20).navigationBarItems(trailing: NavigationLink(destination: PaymentInfo(product: product, listProducts: $listProducts)) {
            Image(systemName: "square.and.pencil")
        })
    }
}

func getPrices(payment: [Payment]) -> [Double] {
    var payments: [Double] = []
    for data in payment{
        payments.append(data.price)
    }
    return payments
}
