//
//  CrappifyAudioApp.swift
//  Shared
//
//  Created by Christopher Liscio on 2021-01-27.
//

import SwiftUI
import AVFoundation

final class State: ObservableObject {
    let audioEngine = AVAudioEngine()
    
    func crappify() {
        let _ = audioEngine.outputNode
    }
}

@main
struct CrappifyAudioApp: App {
    @StateObject var state = State()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                ContentView()
                
                Button("Crappify!") {
                    state.crappify()
                }
            }
            .padding()
        }
    }
}
