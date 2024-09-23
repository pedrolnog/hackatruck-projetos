//
//  BlueView.swift
//  tabview
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        Color(.blue)
            .ignoresSafeArea(.all, edges: .top)
            .overlay {
                Image(systemName: "paintbrush")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 225)
                    .padding(50)
                    .foregroundStyle(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .background(.black)
                    .clipShape(Circle())

        }
        
    }
        
}

#Preview {
    BlueView()
}
