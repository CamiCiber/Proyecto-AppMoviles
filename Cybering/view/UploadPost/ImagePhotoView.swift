//
//  ImagePhotoView.swift
//  Cybering
//
//  Created by WALTER on 29/11/23.
//

import SwiftUI

struct ImagePhotoView: View {
    var image: UIImage
        var width: CGFloat
        var height: CGFloat
        var body: some View {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
               
        }
}

