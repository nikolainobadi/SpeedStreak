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
            TempInAppView()
        } else {
            NoCredentialLoginView()
        }
    }
}


// MARK: - Preview
#Preview {
    LaunchCoordinatorView()
}
