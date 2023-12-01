import SwiftUI

struct ChatView: View {
    let chatData: Chat
    
    var body: some View {
        HStack(spacing: 12) {
            Image(chatData.imagenName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(chatData.name)
                    .fontWeight(.bold)
                
                Text(chatData.lastMessage)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text(chatData.lastMessageDate)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

