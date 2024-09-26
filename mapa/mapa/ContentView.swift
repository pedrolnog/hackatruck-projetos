//
//  ContentView.swift
//  mapa
//
//  Created by Turma01-23 on 26/09/24.
//

import SwiftUI
import Foundation
import MapKit

struct Local : Identifiable {
    let id = UUID()
    let nome : String
    let coordenada : CLLocationCoordinate2D
    let bandeira : String
    let descricao : String
}

struct ContentView: View {
    @State var posicao = MapCameraPosition.region(
        MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: -9.3814784, longitude: -40.5110784), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    @State var paisAtual = "Brasil"
    @State var sheetAberta = false
    
    var paises = [
        Local(nome: "Brasil",
              coordenada: CLLocationCoordinate2D(latitude: -9.683469, longitude: -52.308555),
              bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/1920px-Flag_of_Brazil.svg.png",
              descricao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
        Local(nome: "Angola",
              coordenada: CLLocationCoordinate2D(latitude: -12.286385, longitude: 17.762631),
              bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/1920px-Flag_of_Angola.svg.png",
              descricao: "Angola é um país no sul da África, com um território que abrange praias tropicais do Atlântico, além de um sistema labiríntico de rios e desertos subsaarianos que se estende até a Namíbia. A história colonial do país se reflete em sua cozinha de influência portuguesa e em marcos históricos, como a Fortaleza de São Miguel, construída pelos portugueses em 1576 para defender a capital, Luanda."),
        Local(nome: "Coreia do Sul",
              coordenada: CLLocationCoordinate2D(latitude: 36.458351, longitude: 127.855841),
              bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/1920px-Flag_of_South_Korea.svg.png",
              descricao: "A Coreia do Sul, uma nação do Leste da Ásia localizada na metade sul da Península da Coreia, compartilha uma das fronteiras mais militarizadas do mundo com a Coreia do Norte. Ela também é conhecida pelo interior verde, com colinas repletas de cerejeiras e templos budistas com séculos de existência, além de vilas de pescadores na costa, ilhas subtropicais e cidades com tecnologia avançada como Seul, a capital.")
    ]
    

    
    var body: some View {
        ZStack {
            Map(position: $posicao) {
                ForEach(paises) {
                    pais in Annotation(pais.nome, coordinate: pais.coordenada) {
                            Button {
                                sheetAberta.toggle()
                            } label: {
                                Image(systemName: "flag.fill")
                                    .padding(3)
                                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 2))
                            } .sheet(isPresented: $sheetAberta, content: {
                                AsyncImage(url: URL(string: pais.bandeira)) {
                                    image in
                                    image
                                        .image?.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 350)
                                        .padding()
                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                }
                                Text(pais.descricao)
                                    .padding()
                                    .multilineTextAlignment(.leading)
                            })
                        }
                    }
                }.ignoresSafeArea()
            
        
            
            VStack {
                Color.clear
                    .background(.regularMaterial)
                    .ignoresSafeArea()
                    .frame(height:60)
                    .shadow(radius: 5)
                    .overlay {
                        VStack {
                            Text("World Map")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .shadow(radius: 20)
                                .padding(.top, -15)
                            Text("\(paisAtual)")
                        }
                    }
                
                Spacer()
                
                    Color.clear
                        .background(.regularMaterial)
                        .ignoresSafeArea()
                        .frame(height: 80)
                        .shadow(radius: 5)
                        .overlay {
                            HStack {
                            ForEach(paises, id: \.id) {
                                pais in VStack{
                                    Button {
                                            posicao = MapCameraPosition.region(MKCoordinateRegion(center: pais.coordenada, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                            paisAtual = pais.nome
                                        
                                    } label: {
                                        AsyncImage(url: URL(string: pais.bandeira)) {
                                            image in
                                            image
                                                .image?.resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 80)
                                                .padding(.top, 30)
                                    }
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
