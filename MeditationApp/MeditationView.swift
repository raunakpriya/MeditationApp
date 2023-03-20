//
//  MeditationView.swift
//  MeditationApp
//

import SwiftUI

struct MeditationView: View {
    
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 0) {
            
            // MARK: Image
            
            Image(meditationVM.mediatation.image)
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
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.mediatation.duration) ??
                            meditationVM.mediatation.duration.formatted() + "S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.6)
                    
                    Text(meditationVM.mediatation.title)
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

                    
                    Text(meditationVM.mediatation.description)
                    
                    Spacer()
                    
                } .foregroundColor(Color.white )
                    .padding(20)
                
               
                
               
                
            }.frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: meditationVM)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    
    static let meditationVM = MeditationViewModel(mediatation: Meditation.data)
    static var previews: some View {
        MeditationView(meditationVM: meditationVM)
    }
}
