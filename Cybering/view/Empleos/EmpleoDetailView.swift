import SwiftUI
struct EmpleoDetailView: View {
    let empleoPost: EmpleoPost
    var body: some View {
        HStack{
            VStack(alignment: .center){
                Text(empleoPost.titulo)
                    .font(.largeTitle)
                    .bold()
                Image(empleoPost.imagenNombre)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 200)
                    .cornerRadius(10)
                    .padding(.horizontal)
                Text("Calificación de la empresa:")
                .bold()
                .padding(.horizontal)
                HStack {
                    
                   ForEach(0..<5, id: \.self) { index in
                       Image(systemName: index < empleoPost.calificacion ? "star.fill" : "star")
                           .foregroundColor(index < empleoPost.calificacion ? .yellow : .gray)
                   }
               }
               .padding(.vertical)
                Text(empleoPost.descripcion)
                Spacer()
                    
            }
            Spacer()
        }
        .padding([.leading,.trailing],24)
    }
}
