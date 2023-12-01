import Foundation

class SignOutViewModel {
    
    func signOut() {
        AuthService.shared.signOut()
    }
}
