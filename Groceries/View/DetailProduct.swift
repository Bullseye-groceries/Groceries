//
//  Account.swift
//  Groceries
//
//  Created by Guilherme Deconto on 14/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import SwiftUI

struct DetailProduct: View {
    var product: Product

    var body: some View {
        Text(product.description)
    }
}
