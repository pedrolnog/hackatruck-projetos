//
//  ListView.swift
//  tabview
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Lista")
                    .font(.title)
                    .bold()
                    .frame(width: .infinity, alignment: .trailing)
                    .padding(.top)
                    .padding(.horizontal)
                Spacer()
            }
            
            NavigationStack {
                VStack() {
                    HStack {
                        NavigationLink(destination: BlueView()) {
                            Text("Azul")
                            Spacer()
                            Image(systemName: "paintbrush")
                        }
                        .padding(.horizontal, 50)
                        .padding(.vertical, 5)
                    }
                    HStack {
                        NavigationLink(destination: RedView()) {
                            Text("Vermelho")
                            Spacer()
                            Image(systemName: "paintbrush.pointed")
                        }
                        .padding(.horizontal, 50)
                        .padding(.vertical, 5)

                    }
                    HStack {
                        NavigationLink(destination: GreenView()) {
                            Text("Verde")
                            Spacer()
                            Image(systemName: "paintpalette")
                        }
                        .padding(.horizontal, 50)
                        .padding(.vertical, 5)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListView()
}
