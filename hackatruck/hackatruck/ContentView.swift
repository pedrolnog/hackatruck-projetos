//
//  ContentView.swift
//  hackatruck
//
//  Created by Turma01-23 on 19/09/24.
//

import SwiftUI


struct ContentView: View {
    @State var nome = ""
    @State private var showAlert = false
    var body: some View {
        ZStack {
            ZStack{
                Image(.capturaDeTela20230118Às225948)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 0.0, height: 875.0)
                    .blur(radius: 5)
                
                Rectangle()
                    .fill(.white)
                    .opacity(0.8)
            }
            
            VStack() {
                Text("Bem vindo, \(nome)")
                    .padding(.top, 60)
                    .font(.title)
                TextField("Nome", text: $nome)
                    .multilineTextAlignment(.center)
                    
                Spacer()
            }
            
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .shadow(color: .black, radius: 5)
                
                Image(.truck)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .shadow(color: .black, radius: 10)
            }
            
            VStack{
                Button("Entrar") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {

                    Alert(
                    title: Text("ALERTA !"),
                    message: Text("Voce ira iniciar o desafio da aula agora"),
                    dismissButton: .cancel(Text("Vamos la!"))
          
                )
                    }
                .padding(.top, 750)
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
