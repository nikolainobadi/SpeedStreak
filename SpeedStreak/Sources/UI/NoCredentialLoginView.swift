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


// MARK: - 'Callback' Syntax
/// When you write a function, there is always a return type. If you don't define that type, it is Void
/// so technically something like this
///
/// func doSomething() {
///}
///
/// can be translated to this 'behind the scenes
///
/// func doSomething() -> Void {
/// }
///
/// Likewise, if you want the function to return an Int or a Bool, you define that in the 'function signature'
///
/// func giveMeAnInt() -> Int {
///}
///
/// func giveMeABool() -> Bool {
/// }
///
///
/// So to pass any of this as an argument, they would appear like this in the struct
///
/// let doSomething: () -> Void
/// let giveMeAnInt: () -> Void
/// let giveMeAnBool: () -> Void
///
/// then these 'callbacks' can be used by invoking the name you used followed by parenthesis
///
///
/// doSomething()
/// let myInt = giveMeAnInt()
/// let myBool = giveMeABool()

