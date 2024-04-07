//
//  InAppCoordinatorView.swift
//  SpeedStreak
//
//  Created by Nikolai Nobadi on 4/7/24.
//

import SwiftUI

struct InAppCoordinatorView: View {
    @State var showingLogoutView = false
    
    let logoutAction: () -> Void
    
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                    .background(.thinMaterial)
                
                SpeedometerView()
            }
            .navigationTitle("Navbar")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { showingLogoutView = true }) {
                        Image(systemName: "gearshape")
                    }
                }
            }
            .sheet(isPresented: $showingLogoutView) {
                SettingsView(logoutAction: logoutAction)
            }
        }
    }
}


// MARK: - Preview
#Preview {
    InAppCoordinatorView(logoutAction: { })
}
