//
//  LandmarkDetail.swift
//  WatchLandmark Watch App
//
//  Created by student on 26/04/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark


    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }


    var body: some View {
        @Bindable var modelData = modelData
        
        VStack {
            CircleImage(image: landmark.image.resizable())
                .scaledToFill()
        }
    }
}


#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
