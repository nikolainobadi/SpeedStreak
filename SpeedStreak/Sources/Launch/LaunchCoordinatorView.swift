//
//  LaunchCoordinatorView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 2/24/24.
//

import SwiftUI

struct LaunchCoordinatorView: View {
    
    @State private var hasLogInCredentials = true
    @State private var isNavigating = false
    
    var body: some View {
        NavigationStack {
            Button("LOG IN"){
                isNavigating = true
            }
            .navigationDestination(isPresented: $isNavigating) {
                if hasLogInCredentials == true {
                    hasLogInCredentials_TrueView()
                } else {
                    hasLogInCredentials_FalseView()
                }
            }
        }
    }
}

struct hasLogInCredentials_TrueView: View {
    var body: some View {
        TempInAppView()
    }
}

struct hasLogInCredentials_FalseView: View {
    var body: some View {
        NoCredentialLoginView()
    }
}


// MARK: - Preview
#Preview {
    LaunchCoordinatorView()
}
