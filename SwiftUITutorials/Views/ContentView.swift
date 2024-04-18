//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by student on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hello, P!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About turtle rocks")
                    .font(.title2)
                Text("Descriptiive text goes here ")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
