//
//  MeditationView.swift
//  MeditationApp
//

import SwiftUI

struct MeditationView: View {
    
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: Image
            
            Image("image-stones")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            // MARK: Meditation Details
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Type and Duration
                    
                    VStack(alignment: .leading, spacing: 24) {
                        Text("Music")
                        
                        Text("0sec")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.6)
                    
                    Text("A minute meditaion")
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }

                    
                    Text("Clear your mind from the clutter of the world")
                    
                    Spacer()
                    
                } .foregroundColor(Color.white )
                    .padding(20)
                
               
                
               
                
            }.frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView()
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
