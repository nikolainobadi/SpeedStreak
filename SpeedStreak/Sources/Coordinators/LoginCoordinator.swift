//
//  LoginCoordinator.swift
//  SpeedStreak
//
//  Created by John on 3/29/24.
//

import SwiftUI

//struct LoginCoordinator: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

func loginActionPushed() {
    struct LoginCoordinator: View {
        var body: some View {
                TempInAppView()
        }
    }}

func logoutActionPushed() {
    struct LoginCoordinator: View {
        var body: some View {
                NoCredentialLoginView()
        }
    }}



//#Preview {
//    LoginCoordinator()
//}
