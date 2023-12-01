import SwiftUI

struct MiRedCell: View {
    let miRedPost: MiRedPost

    var body: some View {
        VStack {
            Image(miRedPost.connectionImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 3)

            Text(miRedPost.connectionName)
                .fontWeight(.bold)
                .padding(.vertical, 2)

            Text(miRedPost.connectionSpecialty)
                .foregroundColor(.gray)
                .padding(.bottom, 2)

            HStack {
                Image(systemName: "person.2.fill")
                    .foregroundColor(.blue)
                Text("\(miRedPost.commonContacts) contactos en común")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading, 2)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

