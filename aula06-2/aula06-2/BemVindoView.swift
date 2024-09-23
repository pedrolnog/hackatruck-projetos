//
//  BemVindoView.swift
//  aula06-2
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct BemVindoView: View {
    @State var nome : String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Nome", text: $nome)
                    .multilineTextAlignment(.center)
                    
                Spacer().frame(height: 15)
                
                Text("Bem-vindo, \(nome)")
                    .font(.title)
            
                Spacer().frame(height: 50)
                
                NavigationLink("Acessar tela", destination: volteView(nome: $nome))
                    .buttonStyle(.borderedProminent)
                    .shadow(radius: 3)
                
                
            }
            .frame(width: 300, height: 200)
            .foregroundStyle(.white)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            
        }
            
            
            
        }
    }


#Preview {
    BemVindoView()
}
