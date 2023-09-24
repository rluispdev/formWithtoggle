//
//  UserSettings.swift
//  FormWithControls
//
//  Created by Rafael Gonzaga on 24/09/23.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var username: String {
        didSet {
            UserDefaults.standard.set(username, forKey: "username")
        }
    }
    
    @Published var isPrivate: Bool {
        didSet {
            UserDefaults.standard.set(isPrivate, forKey: "isAccountPrivate")
        }
    }
    
    @Published var ringtone: String {
        didSet {
            UserDefaults.standard.set(ringtone, forKey: "ringtone")
        }
    }
    
    public var ringtones = ["Chimes", "Signal", "Waves"]
    
    init() {
        self.username = UserDefaults.standard.object(forKey: "username") as? String ?? ""
        self.isPrivate = UserDefaults.standard.object(forKey: "isAccountPrivate") as? Bool ?? true
        self.ringtone = UserDefaults.standard.object(forKey: "ringtone") as? String ?? "Chimes"
    }
}
