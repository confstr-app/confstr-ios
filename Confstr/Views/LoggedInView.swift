//
//  LoggedInView.swift
//  Confstr
//
//  Created by Terry Yiu on 6/18/23.
//

import SwiftUI

struct LoggedInView: View {

    @Binding var loginMode: LoginMode

    var body: some View {
        NavigationStack {
            ConferencesView(loginMode: $loginMode, conferences: ConferencesView_Previews.conferences)
                .navigationTitle("Conferences")
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        NavigationLink(destination: SettingsView(loginMode: $loginMode)) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    @State static var loginMode: LoginMode = .guest(relayAddress: LoginView.defaultRelay)

    static var previews: some View {
        LoggedInView(loginMode: $loginMode)
    }
}
