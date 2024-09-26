//
//  musicaView.swift
//  spotify
//
//  Created by Turma01-23 on 24/09/24.
//

import SwiftUI

struct musicaView: View {
    
    @State var nome : String
    @State var autor: String
    @State var capa : String
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .center)
            .ignoresSafeArea()
            .overlay {
                ScrollView {
                    VStack {
                        AsyncImage(url: URL(string: capa)) {
                            image in image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .padding()
                        } placeholder: {ProgressView()}
                        Text("\(nome)")
                            .foregroundStyle(.white)
                            .font(.title2)
                        Text("\(autor)")
                            .foregroundStyle(.gray)
                            .font(.system(size: 16))
                    
                        Spacer().frame(height: 150)
                        
                        HStack {
                            Image(systemName: "shuffle")
                                .foregroundStyle(.white)
                                .aspectRatio(contentMode: .fit)
                            Image(systemName: "backward.end.fill")
                                .foregroundStyle(.white)
                            Image(systemName: "play.fill")
                                .foregroundStyle(.white)
                            Image(systemName: "forward.end.fill")
                                .foregroundStyle(.white)
                            Image(systemName: "repeat")
                                .foregroundColor(.white)

                        }
                        
                        Spacer()
                    }
                    
                }
            }
    }
}
