//
//  FavButton.swift
//  SwiftUITutorials
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct FavButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("toggle favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavButton(isSet: .constant(true))
}
