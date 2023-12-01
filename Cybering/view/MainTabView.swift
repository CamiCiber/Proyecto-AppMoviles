import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            MiRedView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                }
            UploadPostView()
                .tabItem {
                    Image(systemName: "camera.on.rectangle.fill")
                }
            NotificationView()
                .tabItem {
                    Image(systemName: "bell.fill")
                }
        EmpleosView()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                }
        }
        .accentColor(.black)
    }
}
