//
//  NoCredentialLoginView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 3/9/24.
//

import SwiftUI

struct NoCredentialLoginView: View {
    /// 'Callbacks' can be passed in and declared like variables.
    /// The syntax       () -> Void          represents the callback. Think of it like a function without the 'func' keyword
    let loginAction: () -> Void
    
    var body: some View {
        Button("Log In", action: loginAction)
            .buttonStyle(.borderedProminent)
    }
}


// MARK: - Preview
#Preview {
    NoCredentialLoginView(loginAction: { })
}
