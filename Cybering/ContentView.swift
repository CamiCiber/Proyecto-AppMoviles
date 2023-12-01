import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registerViewModel:RegisterViewModel = RegisterViewModel()
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        if viewModel.userSession == nil {
            LoginView(LoginViewModel:loginViewModel)
                .environmentObject(registerViewModel)
        } else {
            MainTabView()
        }
    }
}


