
import SwiftUI
struct EmpleosView: View {
    //lo que el usuario escribe en la barra de busqueda
    @State private var searchText:String=""
    @State private var showingMessagesView = false
    @State private var selectedFilter: String? = nil
    @State private var selectedLocation: String? = "Todas las zonas"
    let comboBoxOptions = ["Todos", "Tiempo Completo", "Medio Tiempo", "Freelance"]
    let locationOptions = ["Todos los distritos", "Lima", "Surco", "Miraflores", "Barranco","Surquillo"]
    ////
    var filteredEmpleos: [EmpleoPost] {
            return EmpleoPost.MOCK_EMPLEO_POST.filter { empleoPost in
                let matchesSearchText = searchText.isEmpty || empleoPost.titulo.localizedCaseInsensitiveContains(searchText)
                let matchesFilter = selectedFilter == nil || selectedFilter == "Todos" || empleoPost.tipoEmpleo.localizedCaseInsensitiveContains(selectedFilter!)
                let matchesLocation = selectedLocation == "Todos los distritos" || empleoPost.ciudad.localizedCaseInsensitiveContains(selectedLocation!)
                return matchesSearchText && matchesFilter && matchesLocation
            }
        }
    ///

    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                   Picker("Options", selection: $selectedFilter) {
                       ForEach(comboBoxOptions.dropFirst(), id: \.self) { option in
                           Text(option).tag(option as String?)
                       }
                   }
                   .pickerStyle(MenuPickerStyle())
                    
                    Picker("Distrito", selection: $selectedLocation) {
                       ForEach(locationOptions, id: \.self) { location in
                           Text(location).tag(location as String?)
                       }
                   }
                   .pickerStyle(MenuPickerStyle())
               }
               .padding()
            
                // Lista de ofertas de empleo centrándolas usando un LazyVStack
                LazyVStack(alignment: .center, spacing: 10) {
            
                    ForEach(filteredEmpleos) { empleoPost in
                        NavigationLink(destination:{ EmpleoDetailView(empleoPost: empleoPost)})
                        {
                            EmpleoCell(empleoPost: empleoPost)
                                .padding(.bottom, 16)
                        }
                        //EmpleoCell(empleoPost: empleoPost)
                          //  .padding(.bottom, 16)
                    }
                 }
            }
            .navigationTitle("Empleos")
            //barra de busqueda
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt:"Buscar un empleo")
            .toolbar {
                // Elementos de la barra de navegación
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Image("usuario") // Reemplaza "perfil" con el nombre de tu imagen de perfil
                        .resizable()
                        .scaledToFill()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                }
                ToolbarItemGroup(placement: .navigationBarLeading) {
                  
                            Image(systemName: "bell.fill")
                        
                  
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Acción para el botón de mensajes
                        self.showingMessagesView = true
                    }) {
                        Image(systemName: "envelope.fill")
                    }
                }
            }
            .sheet(isPresented: $showingMessagesView) {
                            MessagesView()
                        }
        }
    }
}


