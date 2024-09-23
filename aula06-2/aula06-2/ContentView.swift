//
//  ContentView.swift
//  aula06-2
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var sheetPresented = false
    
    var body: some View {
        NavigationStack {

        ZStack{
           // Color.preto
             //   .ignoresSafeArea(.all)
            
            VStack {
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.bottom, 175)
                
                
                
                VStack{
                    NavigationLink("Modo 1",destination: nomeView())
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 150, height: 75)
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                    
                    Spacer().frame(height:20)
                    
                    NavigationLink("Modo 2", destination: BemVindoView())
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 150, height: 75)
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                    
                    Spacer().frame(height:20)
                    
                    
                    Button("Modo 3") {
                        sheetPresented.toggle()
                    }.multilineTextAlignment(.center)
                        .frame(width: 150, height: 75)
                        .foregroundStyle(.white)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))) .sheet(isPresented: $sheetPresented, content: {
                            Text("Nome: Tiago\nSobrenome: Pereira")
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 100)
                                .foregroundStyle(.white)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
                            
                        })
                
                    Spacer()
                    
                }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
