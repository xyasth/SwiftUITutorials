//
//  LandmarkList.swift
//  SwiftUITutorials
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ Landmark in
            (!showFavoriteOnly || Landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks){landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        Landmarkrow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
                .navigationTitle("Landmarks")
        } detail: {
            Text("select a landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}




//List{
//    Landmarkrow(landmark: landmarks[0])
//    Landmarkrow(landmark: landmarks[1])
//}
