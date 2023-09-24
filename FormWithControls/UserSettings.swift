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
    
    init( ) {
        self.username = UserDefaults.standard.object(forKey: "username") as? String ?? ""
    }
}
