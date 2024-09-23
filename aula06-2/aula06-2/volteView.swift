//
//  volteVIew.swift
//  aula06-2
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct volteView: View {
    @Binding var nome : String
    
    var body: some View {
         
        Text("Volte, \(nome)!!")
            .foregroundStyle(.white)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
            .padding()
    }
}
