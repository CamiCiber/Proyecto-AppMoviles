import Foundation

class RegisterViewModel:ObservableObject{
    @Published var email:String = ""
    @Published var password:String = ""
    
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password)
    }
    
}
