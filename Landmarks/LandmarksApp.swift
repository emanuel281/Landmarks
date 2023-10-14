//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Emanuel Magxothwa on 2023/10/13.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
