//
//  Model.swift
//  teste-api
//
//  Created by Turma01-23 on 27/09/24.
//

import Foundation

struct HaPo : Decodable, Identifiable {
    let id : String
    let name : String?
    let species : String?
    let gender : String?
    let dateOfBirth : String?
    let wizard : Bool?
    let alive : Bool?
    let image : String?
}
