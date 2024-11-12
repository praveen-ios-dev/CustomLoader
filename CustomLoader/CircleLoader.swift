//
//  CircleLoader.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct CircleLoader: View {
    @State private var isAnimating = false
    
    private var animation: Animation {
        .easeInOut(duration: 1.0)
        .repeatForever(autoreverses: true)
    }
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)
                .scaleEffect(isAnimating ? 2 : 0.5)
                .opacity(isAnimating ? 0.5 : 1.0)
                .animation(
                    isAnimating ?
                        .easeInOut(duration: 1.0)
                        .repeatForever(autoreverses: true):
                            .default,
                    value: isAnimating
                )
                .onAppear {
                    isAnimating = true
                }
                .padding()
            
            Button(action: {
                isAnimating.toggle()
            }) {
                Text(isAnimating ? "Stop" : "Start")
            }
        }
    }
    
}

#Preview {
    CircleLoader()
}
