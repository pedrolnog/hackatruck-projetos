//
//  Model.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import Foundation

struct Moeda : Decodable {
    var id: String
    var symbol: String?
    var name: String?
    var image: String?
    var current_price: Float?
    var market_cap : Float?
}
