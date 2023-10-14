//
//  ContentView.swift
//  Landmarks
//
//  Created by Emanuel Magxothwa on 2023/10/13.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
