//
    // Project: InAppReview
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI
import StoreKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("In-App Reviews Demo")
                .font(.title2).bold()
            
            Button("Request Review") {
                if let scene = UIApplication.shared.connectedScenes
                    .first as? UIWindowScene {
                    AppStore.requestReview(in: scene)
                }
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}


/*
 SwiftUI environment way
 
 import SwiftUI
 import StoreKit
 
 struct ContentView: View {
 @Environment(\.requestReview) private var requestReview
 
 var body: some View {
 Button("Request Review") {
 requestReview()
 }
 }
 }

 
 
 */
