//
//  MeditationAppApp.swift
//  MeditationApp
//

import SwiftUI

@main
struct MeditationAppApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
