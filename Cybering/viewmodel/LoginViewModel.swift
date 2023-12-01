
import Foundation


class LoginViewModel:ObservableObject{
@Published var email:String = ""
@Published var password:String = ""
@Published var username:String = ""

func Login() async throws{
   try await
AuthService.shared.login(email: email,  password: password)}



}
