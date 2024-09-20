//
//  ContentView.swift
//  imc
//
//  Created by Turma01-23 on 20/09/24.
//

import SwiftUI


struct ContentView: View {
    @State var peso = ""
    @State var altura = ""
    @State var resultImc = ""
    @State var cor : Color = .normal
    
    func calcular(peso: Float, altura: Float) -> (Color, String) {
        @State var imc : Float
        
        imc = peso / (pow(altura, 2))
        
        switch imc {
        case 0...18.5:
            return (.baixoPeso, "Baixo peso")
        case 18.6...24.9:
            return(.normal, "Normal")
        case 25...30:
            return (.sobrepeso, "Sobrepeso")
        case 30...100:
            return (.obesidade, "Obesidade")
        default:
            return(.gray, "Erro")
            
        }
        
    }

    
    var body: some View {
        ZStack{
                
            VStack {
                VStack(alignment: .leading) {
                    Text("Calculadora de IMC")
                        .font(.title)
                }
                VStack(alignment: .center) {
                    TextField("Insira seu peso", text: $peso)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    TextField("Insira sua altura", text: $altura)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    Button("Calcular") {
                        (cor, resultImc) = calcular(peso: Float(peso) ?? 0,altura: Float(altura) ?? 0)
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(10)

                }
                
                Spacer()
                
                Text("\(resultImc)")
                    .font(.title2)
                    .bold()
                    .shadow(radius:2)
                    
                Spacer()
                
                Image(.tabelaIMC)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(3.0)
                    .padding()
                    .shadow(radius:5)
            }
        }
        .background(Color(cor))
    }
}

#Preview {
    ContentView()

}
