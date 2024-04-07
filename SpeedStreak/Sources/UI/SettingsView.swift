//
//  SettingsView.swift
//  SpeedStreak
//
//  Created by John on 3/23/24.
//

import SwiftUI

struct SettingsView: View {
    let logoutAction: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            Text("YES!! YOU GOT LOG IN CREDENTIALS!")
            Spacer()
            Button("Log Out", action: logoutAction)
                .buttonStyle(.borderedProminent)
            Spacer()
        }
        
    }
}

#Preview {
    SettingsView(logoutAction: { })
}


