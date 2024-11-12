//
//  ImageLoader.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct ImageLoader: View {
    @State private var rotationDegrees = 0.0
    @State private var isAnimating = true
    private var animation: Animation {
        .linear
        .speed(0.1)
    }
    
    var body: some View {
        VStack{
            Image(systemName: "gear.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .font(.system(size: 20))
                .rotationEffect(.degrees(rotationDegrees))
                .onAppear {
                    if isAnimating {
                        withAnimation(animation) {
                            rotationDegrees = 360.0
                        }
                    }
                }
                .onChange(of: isAnimating, perform: { animating in
                    if animating {
                        rotationDegrees = 0.0 // Reset rotation
                        withAnimation(animation) {
                            rotationDegrees = 360.0
                        }
                    } else {
                        rotationDegrees = 0.0 // Stop rotation
                    }
                })
            
            Button(action: {
                isAnimating.toggle()
            }) {
                Text(isAnimating ? "Stop" : "Start")
            }
            
        }
    }
}

#Preview {
    ImageLoader()
}
