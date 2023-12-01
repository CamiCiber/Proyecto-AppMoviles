import SwiftUI
struct MessagesView: View {

   
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(Chat.MOCK_CHAT) { chatData in
                    ChatView(chatData: chatData)
                        .padding(.horizontal)
                    Divider()
                }
            }
        }
        .navigationTitle("Mensajes")
    }
}
