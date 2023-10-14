//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Emanuel Magxothwa on 2023/10/14.
//

import SwiftUI

struct LandmarkRow: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    
    let landmarks = ModelData().landmarks
    
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    .environment(ModelData())
}
