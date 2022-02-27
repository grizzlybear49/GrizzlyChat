//
//  GrizzlyChatApp.swift
//  GrizzlyChat
//
//  Created by Mihai Cojocaru on 27.02.2022.
//
import Firebase
import SwiftUI

@main
struct GrizzlyChatApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
