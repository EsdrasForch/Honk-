//
//  ContentView.swift
//  Honk! WatchKit Extension
//
//  Created by Esdras Forch on 10/3/22.
//  WatchOS 8.1

import SwiftUI
import AVFoundation


//Next steps: Find a way to add a gif with an endless loop
//Randomize different honking noises

var player: AVAudioPlayer!

struct ContentView: View {
    
   
    var body: some View {
        //background photo
        ZStack {
                    Image("bg")
                        .ignoresSafeArea()
        VStack(){
            
            Button(action:{
                
                //Call playSound function
                playSound()

            }){
                Image("goose")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 150, height: 150)
                  

//                Text("Honk")
//                    .foregroundColor(Color.orange)
//                    .font(.system(size:25))
                }
            }
        }
    }
        func playSound() {
            
            //url state to locate sound clip
            let url = Bundle.main.url(forResource: "honk-sound", withExtension: "mp3")
            
            //Always make sure to have a guard state to debug audiofi with missing audio
            guard url != nil else {
                return
            }
            
            do {
                
                player = try AVAudioPlayer(contentsOf: url!)
                player?.play()
                
            } catch {
                print("\(error)")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


