//
//  TestView.swift
//  Groceries
//
//  Created by Guilherme Deconto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI
import SwiftUICharts
struct TestView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .singleLine
    }

    var body: some View {
//         LineView(data: [8,23,54,32,12,37,7,23,43], title: "Line chart", legend: "Full screen").padding()
//        PieChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
//        LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Title")
//         BarChartView(data: ChartData(points: [8,23,54,32,12,37,7,23,43]), title: "Title", legend: "Legendary") // legend is optional
        BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Sales", legend: "Quarterly") // legend is optional
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
