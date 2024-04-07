//
//  LaunchCoordinatorView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 2/24/24.
//

import SwiftUI

struct LaunchCoordinatorView: View {
    @State private var hasLogInCredentials = false
    
    var body: some View {
        if hasLogInCredentials {
            InAppCoordinatorView(logoutAction: logout)
        } else {
            NoCredentialLoginView(loginAction: login)
        }
    }
}


// MARK: - Private Methods
/// this is my personal style.
/// when adding methods (functions) to a SwiftUI View, I prefer to initially store them in a private extensions
/// eventually I end up moving the functions to a separate file if needed
/// so any changes to those functions don't necessarily have to affect the  View
private extension LaunchCoordinatorView {
    func login() {
        hasLogInCredentials = true
    }
    
    func logout() {
        hasLogInCredentials = false
    }
}


// MARK: - Preview
#Preview {
    LaunchCoordinatorView()
}
