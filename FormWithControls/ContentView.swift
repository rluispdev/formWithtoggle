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
                Section("Profile") {
                    
                    TextField("Username", text: $userSettings.username)
                    
                    Toggle(isOn: $userSettings.isPrivate, label: {
                        Text("Private Accunt")})
                    
                    Picker(selection: $userSettings.ringtone, label: Text("Ringtone")) {
                        ForEach(userSettings.ringtones, id: \.self) { ringtone in
                            Text(ringtone)
                        }
                    }
  
                }
                .navigationTitle("Settings")
            }
            
        }
    }
}
#Preview {
    ContentView()
}
