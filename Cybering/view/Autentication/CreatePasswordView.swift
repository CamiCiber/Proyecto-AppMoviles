import SwiftUI

struct CreatePasswordView: View {
    //@State var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registerViewModel:RegisterViewModel
    var body: some View {
        NavigationStack{
            VStack(spacing:12){
                Text("Create Password")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Your password must be at least 6 characters")
                    .font(.footnote)
                    .foregroundColor(.gray)
                SecureField("Password",text:$registerViewModel.password)
                    .autocapitalization(.none)
                    .modifier(AuthTextModifier())
                
                NavigationLink {
                    CompleteSignUpView()
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                Spacer()
            }//End VStack
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            self.dismiss()
                        }
                }
            }
            
        }//End NavigationStack
    }
}

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
