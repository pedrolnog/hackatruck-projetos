//
//  CharView.swift
//  teste-api
//
//  Created by Turma01-23 on 27/09/24.
//

import SwiftUI

struct CharView: View {
    
    @State var p : HaPo
    
    var body: some View {
        AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/b/bd/Dhogwarts.jpg/revision/latest?cb=20120805060045&path-prefix=pt-br")) {
            image in
            image
                .image?.resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .blur(radius: 3)
                .colorMultiply(.orange)
                .background(.black)
                .padding(.top, -180)
                .overlay {
                    VStack {
                        AsyncImage(url: URL(string: p.image!)) {
                            image in image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 175, height: 175)
                                .cornerRadius(100)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        } placeholder: {
                            ProgressView()
                        }
                        Text(p.name!)
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Text(p.dateOfBirth!)
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Gender: \(p.gender!)")
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Species: \(p.species!)")
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Alive: \(p.alive!)")
                            .foregroundStyle(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                }
        }
        
    }
}



