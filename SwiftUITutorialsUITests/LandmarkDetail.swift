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
              
        ScrollView {
            VStack {
                      CircleImage(image: landmark.image.resizable())
                          .scaledToFill()
                      
                      Text(landmark.name)
                          .font(.headline)
                          .lineLimit(0)


                      Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                          Text("Favorite")
                      }


                      Divider()


                      Text(landmark.park)
                          .font(.caption)
                          .bold()
                          .lineLimit(0)


                      Text(landmark.state)
                          .font(.caption)
                
                Divider()
                
                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("landmark")
    }
}


#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
