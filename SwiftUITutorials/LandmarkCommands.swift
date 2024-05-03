//
//  LandmarkCommands.swift
//  SwiftUITutorials
//
//  Created by student on 03/05/24.
//

import Foundation
import SwiftUI

struct LandmarkCommands: Commands{
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    var body: some Commands{
        SidebarCommands()
        
        CommandMenu("Landmark"){
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                            selectedLandmark?.isFavorite.toggle()
                        }
            .keyboardShortcut("f", modifiers: [.shift, .option])
                        .disabled(selectedLandmark == nil)
        }
    }
}

private struct SelectedLandmarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}


extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandmarkKey.self] }
        set { self[SelectedLandmarkKey.self] = newValue }
    }
}
