//
//  GreenView.swift
//  tabview
//
//  Created by Turma01-23 on 23/09/24.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        Color(.green)
            .ignoresSafeArea(.all, edges: .top)
            .overlay {
                Image(systemName: "paintpalette")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 225)
                    .padding(50)
                    .foregroundStyle(.green)
                    .background(.black)
                    .clipShape(Circle())
            }
    }
}
#Preview {
    GreenView()
}
