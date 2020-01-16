//
//  UserData.swift
//  Groceries
//
//  Created by Guilherme Deconto on 16/01/20.
//  Copyright © 2020 Bullseye Groceries. All rights reserved.
//

import Foundation


struct User: Identifiable, Hashable {
    var id: UUID = UUID()
    var image: String = ""
    var name: String = ""
    var cpf: String = ""
    var score: Int = 0
    var team: String = ""
    
}
