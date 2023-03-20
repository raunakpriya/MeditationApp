//
//  ContentView.swift
//  MeditationApp
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MeditationView(meditationVM: MeditationViewModel(mediatation: Meditation.data))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
