//
//  ContentView.swift
//  teste-api3
//
//  Created by Turma01-23 on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.fetch()
                
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
