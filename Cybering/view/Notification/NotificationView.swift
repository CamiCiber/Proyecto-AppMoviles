import SwiftUI
struct NotificationView: View {
    var notifications: [NotificationPost]

    init() {
        self.notifications = NotificationPost.MOCK_NOTIFICATIONS
    }

    var body: some View {
        NavigationView {
            List(notifications) { notification in
                NavigationLink(destination: NotificationDetailView(notification: notification)) {
                    NotificationCell(notification: notification)
                }
            }
            .navigationBarTitle("Notificaciones")
        }
    }
}
