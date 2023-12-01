//
//  NotificationDetailView.swift
//  Cybering
//
//  Created by Suite on 30/11/23.
//

import SwiftUI

struct NotificationDetailView: View {
    var notification: NotificationPost

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(systemName: "bell")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .foregroundColor(.blue)

            Text(notification.texto)
                .font(.title)

            Text("Hace \(timeAgoSinceDate(notification.fecha))")
                .font(.subheadline)
                .foregroundColor(.gray)

            // Agrega más detalles de la notificación según sea necesario
        }
        .padding(16)
        .navigationBarTitle("Detalles")
    }

    private func timeAgoSinceDate(_ date: Date) -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: date, relativeTo: Date())
    }
}
