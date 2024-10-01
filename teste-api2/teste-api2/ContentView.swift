//
//  ContentView.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {

        NavigationStack {
            VStack {
                Text("CRIPTO")
                    .font(.title)
            
            
                ScrollView {
                    ForEach(viewModel.chars, id:\.id) {
                        m in NavigationLink(destination: CharView(m : m)) {
                            HStack {
                                AsyncImage(url: URL(string: m.image!)) {
                                    image in image
                                        .image?.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(10)
                                        .frame(width: 75)
                                }
                                
                                VStack(alignment: .leading) {
                                    Text(m.name!)
                                        .font(.title3)
                                        .foregroundStyle(.black)
                                    
                                    HStack {
                                        Text("$\(m.symbol!)")
                                            .textCase(.uppercase)
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))

                                        Text("\(m.current_price!)")
                                            .foregroundStyle(.gray)
                                            .font(.system(size: 16))
                                        
                                        Spacer()
                                     }
                                    
                                }
                                
                                Spacer()
                                }
                            }
                        }
                    }
                }.onAppear(){
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
