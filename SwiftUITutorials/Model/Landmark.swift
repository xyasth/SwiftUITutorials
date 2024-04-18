//
//  Landmark.swift
//  SwiftUITutorials
//
//  Created by student on 18/04/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable{
    var id: Int
    var Name: String
    var pake: String
    var state: String
    var descriotion: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationsCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longtitude
        )
    }
    
    struct Coordinates:Hashable, Codable{
        var latitude: Double
        var longtitude: Double
    }
}

