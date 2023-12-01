

import SwiftUI

struct CircleImage: View {
    let image:String
    let width:CGFloat
    let height:CGFloat
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
            .clipShape(Circle())
    }
}


