//
//  ContentView.swift
//  tabview
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                BlueView()
                    .tabItem {
                        Label("Azul", systemImage: "paintbrush")
                    }
                RedView()
                    .tabItem {
                        Label("Vermelho", systemImage: "paintbrush.pointed")
                    }
                GreenView()
                    .tabItem {
                        Label("Verde", systemImage: ".paintpalette")
                    }
                ListView()
                    .tabItem {
                        Label("Lista", systemImage: "list.bullet")
                    }
                
            }            
            
        }
    }

}

#Preview {
    ContentView()
}
