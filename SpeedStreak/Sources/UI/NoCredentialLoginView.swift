//
//  NoCredentialLoginView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 3/9/24.
//

import SwiftUI

struct NoCredentialLoginView: View {
    // MARK: - TODO
    // there are 2 ways to enable the login button from here
    
    // 1. passing the hasLogInCredentials as @Binding, then toggle in the loginButton action directly
    //   - while convenient, this creates a tight coupling between what it means to 'log-in' and this view.
    
    // 2. passing in a closure to represent the action
    //   - this is a better solution because it no longer matters to this view what it means to login
    //
    //   Example:
    //     let loginAction: () -> Void
    //
    //   Usage:
    //     Button("Log in", action: loginAction)    *this can also be written like this*  Button(action: { loginAction() }, label: { Text("Log in") })
    //
    // I think this was a point of confusion in our very first meeting, so if you have questions let me know.
    
    let loginAction: () -> Void = {}
    
    var body: some View {
        Button(action: {loginAction()}, label: {
            Text("Log In")
        })
    }
}


// MARK: - Preview
#Preview {
    NoCredentialLoginView()
}
