import SwiftUI

struct AddEmailView: View {
    //@State var email=""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registerViewModel:RegisterViewModel
    var body: some View {
        NavigationStack{
            VStack(spacing: 12) {
                Text("Add your Email")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("You will use this email to sign up in your account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                TextField("Email",text:
                            $registerViewModel.email)
                    .autocapitalization(.none)
                    .modifier(AuthTextModifier())
                   
                
                
                NavigationLink {
                
                    CreatePasswordView()
                        .navigationBarBackButtonHidden(true)
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

            }//End VStack main
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
