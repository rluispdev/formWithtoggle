//
//  ContentView.swift
//  FormWithControls
//
//  Created by Rafael Gonzaga on 24/09/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Username", text: $userSettings.username)
                } header: {
                    Text("PROFILE")
                }

            }
            .navigationTitle("Settings")
        }
     
    }
}

#Preview {
    ContentView()
}
