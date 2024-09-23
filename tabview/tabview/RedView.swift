//
//  RedView.swift
//  tabview
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        
        Color(.red)
            .ignoresSafeArea(.all, edges: .top)
            .overlay {
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 225)
                    .padding(50)
                    .foregroundStyle(.red)
                    .background(.black)
                    .clipShape(Circle())
            }
    }
    

    }
#Preview {
    RedView()
}
