//
//  PlayerView.swift
//  MeditationApp
//

import SwiftUI

struct PlayerView: View {
    
    @State private var value: Double = 0.0
    var body: some View {
        ZStack {
            Image("image-stones")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            
            // MARK: Blur View
             
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
             
            VStack(spacing: 32) {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                }
                
                
                Text("1 minute relaxing meditation")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                
                // MARK: Playback
                VStack(spacing: 5) {
                    // MARK: Playback Timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    
                    // MARK: Playback Time
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                
                
               // MARK: Playback Controls
                HStack {
                    // MARK: Repeat Button
                    PlaybackControl(systemName: "repeat") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Backword Button
                    PlaybackControl(systemName: "gobackward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Play/Pause Button
                    PlaybackControl(systemName: "play.circle.fill", fontSize: 44) {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Forward Button
                    PlaybackControl(systemName: "goforward.10") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Stop Button
                    PlaybackControl(systemName: "stop.fill") {
                        
                    }
                    
                    Spacer()

                }
                
            }.padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
