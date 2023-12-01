import SwiftUI

struct LoginView: View {
    //@State var email:String=""
    //@State var password:String=""
    
    @StateObject var LoginViewModel:LoginViewModel
    var body: some View {
        NavigationStack{
            VStack {
                //logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                //Textfields
                VStack {
                    TextField("Enter your email",text:$LoginViewModel.email)
                        .autocapitalization(.none)
                        .modifier(AuthTextModifier())
                       
                    
                    SecureField("Enter your password",text:$LoginViewModel.password)
                        .autocapitalization(.none)
                        .modifier(AuthTextModifier())
                      
                    
                }//End Vstak textfields
                
                
                //Button Reset Password
                Button {
                    
                } label: {
                    Text("Forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                //Button Login
                Button {
                    
                    Task {
                       try await LoginViewModel.Login()
                    }
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                //Divider horizontal
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2-40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width/2-40, height: 0.5)
                }//End HStack OR
                .foregroundColor(.gray)
                .padding(.top)
                
                
                //Login with facebook
                HStack {
                    CircleImage(image: "facebook", width: 20, height: 20)
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top)
                
                Spacer()
                Divider()
                //Sign Up link
                
                NavigationLink {
                    //destino de navegacion
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack {
                        Text("Dont have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                }
            }//End VStack main
            
        }//End NavigationStack
        
        
    }
    
    
}

