//
//  ContentView.swift
//  teste-api
//
//  Created by Turma01-23 on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/b/bd/Dhogwarts.jpg/revision/latest?cb=20120805060045&path-prefix=pt-br")) {
                        image in
                        image
                            .image?.resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                            .blur(radius: 3)
                            .colorMultiply(.orange)
                            .background(.black)
                            .padding(.top, -180)
                    }
                    AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/harrypotter/images/9/97/Brasão_de_Hogwarts.png/revision/latest?cb=20161022233035&path-prefix=pt-br")) {
                        image in
                        image
                            .image?.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 175)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                }
                
                
                ScrollView {
                    VStack {
                        ForEach(viewModel.chars, id:\.id) {
                            p in NavigationLink(destination: CharView(p: p)) {
                                HStack{
                                    AsyncImage(url: URL(string: p.image!)) {
                                        image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(100)
                                            .padding(5)
                                            .shadow(radius: 10)
                                    } placeholder : {
                                        ProgressView().frame(width: 100, height: 100)
                                    }
                                    
                                    Text(p.name!)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.white)
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }.background(.verde)
            .onAppear(){
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
