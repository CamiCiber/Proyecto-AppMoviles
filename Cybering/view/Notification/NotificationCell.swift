import SwiftUI
    struct NotificationCell: View {
        var notification: NotificationPost

        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(uiImage: UIImage(named: notification.image) ?? UIImage(systemName: "photo")!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }

                Text(notification.texto)
                    .font(.headline)

                Text("Hace \(timeAgoSinceDate(notification.fecha))")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 2)
        }

        private func timeAgoSinceDate(_ date: Date) -> String {
            let formatter = RelativeDateTimeFormatter()
            formatter.unitsStyle = .full
            return formatter.localizedString(for: date, relativeTo: Date())
        }
    }
