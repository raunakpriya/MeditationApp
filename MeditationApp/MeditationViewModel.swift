//
//  MeditationViewModel.swift
//  MeditationApp
//

import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var mediatation : Meditation
    
    init(mediatation: Meditation) {
        self.mediatation = mediatation
    }
}

struct Meditation {
    let id = UUID()
    let title : String
    let description : String
    let duration : TimeInterval
    let track : String
    let image : String
    
    static let data = Meditation(title: "A minute meditaion", description: "Clear your mind from the clutter of the world", duration: 70, track: "meditation1", image: "image-stones")
}
