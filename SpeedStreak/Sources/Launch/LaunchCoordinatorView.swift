//
//  LaunchCoordinatorView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 2/24/24.
//

import SwiftUI

struct LaunchCoordinatorView: View {
    @State private var hasLogInCredentials = true
    
    // MARK: - NOT NEEDED
    @State private var isNavigating = false
    
    var body: some View {
        // MARK: - NOT NEEDED
        // rather than using a navigation stack, you can simply put the code from the navigationDestination here
        // so replace the NavStack with the if/else that either shows TempInAppView or NoCredentialLoginView pending on hasLogInCredentials
        NavigationStack {
            
            // MARK: - RELOCATE
            // move this button to NoCredentialLoginView
            Button("LOG IN"){
                isNavigating = true
            }
            .navigationDestination(isPresented: $isNavigating) {
                // MARK: - TODO
                // since hasLogInCredentials is a Bool (true/false), it is fine to simply check the condition with:
                //   if hasLoginCredentials { 
                if hasLogInCredentials == true {
                    hasLogInCredentials_TrueView()
                } else {
                    hasLogInCredentials_FalseView()
                }
            }
        }
    }
}


// MARK: - NOT NEEDED
// use TempInAppView directly, no need to wrap it in another view
struct hasLogInCredentials_TrueView: View {
    var body: some View {
        TempInAppView()
    }
}

// MARK: - NOT NEEDED
// use NoCredentialLoginView directly, no need to wrap it in another view
struct hasLogInCredentials_FalseView: View {
    var body: some View {
        NoCredentialLoginView()
    }
}


// MARK: - Preview
#Preview {
    LaunchCoordinatorView()
}
