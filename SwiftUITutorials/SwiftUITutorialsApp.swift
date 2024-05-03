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
        
#if !os(watchOS)
        .commands{
            LandmarkCommands()
        }
#endif
        
#if os(watchOS)
        WKNotificationScene(controller: NotifcationController.self, category: "LandmarkNear")
#endif
        
#if os(macOS)
        Settings {
            LandmarSettings()
        }
#endif
    }
}
