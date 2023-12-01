import SwiftUI

struct EmpleoCell: View {
    let empleoPost: EmpleoPost
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(empleoPost.imagenNombre) // Imagen de la empresa
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Text(empleoPost.titulo) // Título del empleo
                        .font(.headline)
                    Text(empleoPost.empresa) // Nombre de la empresa
                        .font(.subheadline)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Text(empleoPost.tipoEmpleo)
                .lineLimit(2)
                .padding(.horizontal)
            
            HStack {
                Text(empleoPost.ciudad) // Ciudad, País
                    .font(.footnote)
                Spacer()
                Text(empleoPost.dias) // Días desde la publicación
                    .font(.footnote)
            }
            .padding(.horizontal)
        }
        .padding()
        .frame(maxWidth: .infinity) // Esto asegura que la celda se expanda en el ancho
        .background(Color(.systemGray6)) // Color de fondo para cada celda de empleo
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
