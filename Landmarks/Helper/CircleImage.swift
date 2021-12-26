//
//  CircleImage.swift
//  Landmarks
//
//  Created by 박형환 on 2021/07/18.
//charleyrivers

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray , lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("charleyrivers"))
    }
}
