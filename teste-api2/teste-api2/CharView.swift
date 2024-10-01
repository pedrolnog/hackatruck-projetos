//
//  CharView.swift
//  teste-api2
//
//  Created by Turma01-23 on 30/09/24.
//

import SwiftUI

struct CharView: View {
    
    @State var m : Moeda
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: m.image!)) {
                image in image
                    .image?.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
            }
            Text(m.name!)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text("$\(m.symbol!)")
                .foregroundStyle(.gray)
                .textCase(.uppercase)
            
            Spacer().frame(height: 50)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Price: \(m.current_price!)")
                        .font(.title3)
                    Text("Market cap: \(m.market_cap!)")
                        .font(.title3)
                }.padding()
                Spacer()
            }
            
            Spacer()
        }
    }
}

