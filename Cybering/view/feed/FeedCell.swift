import SwiftUI

struct FeedCell: View {
    let feedPost: FeedPost
    @State private var isLiked = false 
    var body: some View {
        VStack {
            HStack {
                CircleImage(image: feedPost.employeeName, width: 40, height: 40)
                VStack(alignment: .leading, spacing: 2) {
                    Text(feedPost.employeeName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text(feedPost.companyName)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 8)
            
            Image(feedPost.companyName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
            
            HStack {
                Button(action: {
                self.isLiked.toggle() // Cuando el boton se presiona
            }) {
                Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                    .font(.body)
                    .foregroundColor(isLiked ? .blue : .black)
                Text("Like")
                    .font(.body)
            }
                Spacer()
            }
            .foregroundColor(.blue)
            .padding(.horizontal, 16)
            .padding(.top, 8)
            
            HStack {
                Text(feedPost.description)
                    .font(.body)
                    .padding(.top, 8)
                Spacer()
            }
            .padding(.horizontal, 16)
            
            HStack {
                Spacer()
                Text(feedPost.timeAgo)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                    .padding(.trailing, 16)
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.bottom, 16)
    }
}
