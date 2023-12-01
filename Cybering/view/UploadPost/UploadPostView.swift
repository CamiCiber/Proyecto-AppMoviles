import SwiftUI
import PhotosUI
struct UploadPostView: View {
    @State var caption=""
    @State var isPresented = false
    @State private var photoItem:PhotosPickerItem?
    @State private var selectedImage:UIImage?

    var body: some View {
        VStack {
  
            HStack {
                CircleImage(image:"usuario", width: 40, height: 40)
                Button {
                    caption=""
                    selectedImage=nil
                } label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
                .disabled(caption.isEmpty)
            }
            .padding(.horizontal)
            
            //Pic and caption
            VStack {
                TextEditor(text: $caption)
                    .frame(height: 150)
                    .padding()
                    .overlay(
                        Group {
                            if caption.isEmpty {
                                Text("¿Sobre qué quieres hablar?")
                                    .foregroundColor(.gray)
                                    .padding(.all, 8)
                                    .transition(.opacity)
                            }
                        }, alignment: .topLeading
                    )
               
             
            }
            //
            if let selectedImage = selectedImage {
                            ImagePhotoView(image: selectedImage, width: 200, height: 200)
                        } else {
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .background(Color.gray.opacity(0.3))
                                
                        }
            
            Spacer()
            Button {
                isPresented.toggle()
            }
        label: {
            VStack {
                Image(systemName: "photo.on.rectangle.angled")
                    .font(.largeTitle)
                Text("Contenido")
                    .font(.subheadline)
            }
        }
        .padding()
        }
        .photosPicker(isPresented: $isPresented,selection: $photoItem)
      //
        .onChange(of: photoItem) { newItem in
                    // Carga la imagen cuando la selección cambia
                    if let photoItem = newItem {
                        Task {
                            await loadImage(for: photoItem)
                        }
                    }
                }
        //
        }
    func loadImage(for item: PhotosPickerItem) async {
            if let data = try? await item.loadTransferable(type: Data.self),
               let image = UIImage(data: data) {
                selectedImage = image
            }
        }
    }

