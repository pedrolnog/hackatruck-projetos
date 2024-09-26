//
//  ContentView.swift
//  spotify
//
//  Created by Turma01-23 on 24/09/24.
//

import SwiftUI

struct Musica : Identifiable {
    var id: Int
    var musica: String
    var autor : String
    var capa : String
    
}

struct Sugerido : Identifiable {
    var id: Int
    var capa : String
    var nome : String
}

struct ContentView: View {
    
    @State var Musicas = [Musica(id: 1, 
                                 musica: "Nomu",
                                 autor: "Good Kid",
                                 capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfOjK4BQoX2amm-PSsQm4UwMGDrvzR6hFY1w&s"),
                          Musica(id: 2,
                                 musica: "Jungle",
                                 autor: "Alok, The Chainsmokers, Mae Stephens", 
                                 capa: "https://cdns-images.dzcdn.net/images/cover/b972a3cbf1140585bb02d6d622e68022/500x500.jpg"),
                          Musica(id: 3,
                                 musica: "Can I Call You Tonight",
                                 autor: "Dayglow",
                                 capa: "https://i.scdn.co/image/ab67616d0000b2735160eaecb31b739ea1c2eaa5")]
    
    @State var Sugeridos = [
        Sugerido(
            id: 1,
            capa: "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO0ppY1a-default.jpg",
            nome: "This is Alok"
        ),
        Sugerido(
            id:2,
            capa: "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO1IPOOk-default.jpg",
            nome: "This is Kendrick Lamar"
        ),
        Sugerido(
            id:3,
            capa: "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO0PRpBu-default.jpg",
            nome: "This is Avicii"
        )
    ]
    
    
    var body: some View {
        NavigationStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
                .overlay {
                    ScrollView {
                        VStack {
                            
                            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b2735160eaecb31b739ea1c2eaa5")) {
                                image in image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 175)
                                    .padding(.top, 10)
                                    .shadow(radius: 3)
                            } placeholder : {ProgressView()}
                            
                            HStack {
                                VStack{
                                    Text("songs")
                                        .font(.title)
                                        .padding()
                                        .foregroundStyle(.white)
                                    HStack{
                                        AsyncImage(url: URL(string: "https://i.pinimg.com/736x/59/82/35/598235eddf2408f88a9a1be794a3316d.jpg")) {
                                            image in image
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 20)
                                                .shadow(radius: 15)
                                        } placeholder : {ProgressView()}
                                        Text("pedro")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 14))
                                    }
                                    .padding(.top, -22)
                                    .padding(.vertical, 15)
                                    .padding(.horizontal)
                                }
                                Spacer()
                            }
                            VStack{
                                
                                NavigationLink(destination: addMusica()) {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30)
                                        .padding(.horizontal, 26)
                                        .background(Rectangle().frame(width: 50, height: 50))
                                    VStack {
                                        HStack{
                                            Text("Adicionar a playlist")
                                                .foregroundStyle(.white)
                                            Spacer()
                                        }
                                        
                                    }
                                    .padding(.horizontal, -12.5)
                                }

                                ForEach(Musicas, id: \.id) {
                                    m in HStack {
                                        NavigationLink(destination: musicaView(nome: m.musica,autor: m.autor, capa: m.capa)) {
                                            AsyncImage(url: URL(string: m.capa)) {
                                                image in image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 50)
                                                    .padding(.horizontal)
                                            } placeholder: {ProgressView()}
                                            VStack {
                                                HStack{
                                                    Text(m.musica)
                                                        .foregroundStyle(.white)
                                                    Spacer()
                                                }
                                                
                                                Spacer().frame(height: 3.5)
                                                
                                                HStack{
                                                    Text(m.autor)
                                                        .foregroundStyle(.gray)
                                                        .font(.system(size: 14))
                                                    Spacer()
                                                }
                                                
                                            }
                                            .padding(.horizontal, -12.5)
                                        }
                                        
                                        Spacer()
                                        
                                        Image(systemName: "ellipsis")
                                            .padding()
                                            .foregroundColor(.gray)
                                        
                                    }
                                }
                                
                            HStack{
                                Text("Sugeridos")
                                    .foregroundStyle(.white)
                                    .font(.title3)
                                    .padding()
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal) {
                                HStack{
                                    ForEach(Sugeridos) {
                                        sug in VStack {
                                            AsyncImage(url: URL(string: sug.capa)) {
                                                image in image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 150)
                                                    .padding(5)
                                            } placeholder: {ProgressView()}
                                            Text(sug.nome).foregroundStyle(.white)
                                                .frame(width: 125,height: 15)
                                                .multilineTextAlignment(.center)
                                                .truncationMode(.tail)
                                        }
                                    }
                                Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
