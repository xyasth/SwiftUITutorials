//
//  SwiftUITutorialsApp.swift
//  SwiftUITutorials
//
//  Created by student on 18/04/24.
//

import SwiftUI

@main
struct SwiftUITutorialsApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
