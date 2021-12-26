//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 박형환 on 2021/07/18.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavoritesOnly = false
    
    @EnvironmentObject var modelData: ModelData
    var filterLandmark: [Landmark] {
        modelData.landmarks.filter({ landmark in
            (!showFavoritesOnly || landmark.isFavorite ) })
    }
    var body: some View {
        
        NavigationView{
      
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites")
                })
                ForEach(filterLandmark){ landmark in
                    NavigationLink( destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
                
            }
        }
            .navigationTitle("LandMark")
      }
        
     
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
