//
//  ContentView.swift
//  Landmarks
//
//  Created by 박형환 on 2021/07/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkList()
                .environmentObject(ModelData())
           
        }
    }
}
