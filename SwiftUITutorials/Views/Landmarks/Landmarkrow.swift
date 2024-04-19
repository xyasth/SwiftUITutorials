//
//  Landmarkrow.swift
//  SwiftUITutorials
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct Landmarkrow: View {
    var landmark : Landmark
    var body: some View {
        HStack() {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("turtle rock") {
    let landmarks = ModelData().landmarks
    return Group {
        Landmarkrow(landmark: landmarks[0])
        Landmarkrow(landmark: landmarks[1])
    }
}
