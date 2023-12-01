import SwiftUI

struct MiRedView: View {
    @State private var searchText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("usuario")
                        .resizable()
                        .frame(width: 40, height: 40)

                    Spacer()

                    // Barra de búsqueda
                    TextField("Buscar", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Spacer()

                }
                .padding()

                // Cuadros con la información de las personas
                LazyVGrid(columns: [
                    GridItem(.flexible(), spacing: 16),
                    GridItem(.flexible(), spacing: 16)
                ], spacing: 16) {
                    ForEach(MiRedPost.MOCK_MI_RED_POST) { miRedPost in
                        MiRedCell(miRedPost: miRedPost)
                    }
                }
                .padding(.horizontal)

                Spacer(minLength: 20)

                // Botón "Ver todo"
                Button("Ver todo") {
                    // Acción al presionar "Ver todo"
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(5)

                Spacer(minLength: 20)
            }
        }
    }
}
