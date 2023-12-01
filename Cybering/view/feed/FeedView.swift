

import SwiftUI

struct FeedView : View {
    @State private var showProfileMenu = false
    var body: some View {
        NavigationView {
            
                ScrollView{
                    LazyVStack{
                        ForEach(FeedPost.MOCK_FEED_POST) { feedPost in
                            FeedCell(feedPost: feedPost)
                                .padding(.bottom, 16)
                        }
                    }
                    .padding(.top, 10)
                }
         
            
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                   
                        Image("usuario")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                    
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        Task{
                            AuthService.shared.signOut()
                        }
                    } label: {
                        Text("Cerrar Sesion")
                            .font(.headline)
                    }
                    
                }
            }
          
            }
        }
    }

