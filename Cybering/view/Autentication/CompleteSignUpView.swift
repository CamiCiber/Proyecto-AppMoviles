import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var registerViewModel:RegisterViewModel
    var body: some View {
        NavigationStack{
            VStack(spacing:12){
                Spacer()
                Text("Welcome to Linkedin")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                Text("Click bellow to continue")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Button {
                    Task{
                        try await registerViewModel.createUser()
                    }
                } label: {
                    Text("Ok")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
               /*
                NavigationLink {
                    MainTabView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Ok")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                */
                Spacer()
            }//End VStack
          
            
        }//End NavigationStack
    }
}
