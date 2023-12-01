import Foundation
import FirebaseAuth

class AuthService {
    @Published var userSession:FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(email:String,password:String) async throws {
        
        let result = try await
        Auth.auth().signIn(withEmail: email, password: password)
         self.userSession = result.user
        
    }
    
    func createUser(email:String,password:String) async throws {
        
       let result = try await
        Auth.auth().createUser(withEmail: email, password: password)
        self.userSession = result.user
        
    }
    
    func loadUsers() async throws {
        
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    //func signOut() {
      //  try? Auth.aut().signOut()
        //self.userSession = nil
    //}
}


