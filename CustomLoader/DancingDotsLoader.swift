//
//  DancingDotsLoader.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct DancingDotsLoader: View {
    @State private var animatingDots = false
    
    var body: some View {
        VStack {
            HStack(spacing: 8) {
                ForEach(0..<5) { index in
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 10, height: 10)
                        .offset(y: animatingDots ? -10 : 10)
                        .animation(
                            animatingDots ?
                            .easeInOut(duration: 0.7)
                            .repeatForever()
                            .delay(Double(index) * 0.1):
                                    .default,
                            value: animatingDots
                        )
                }
            }
            .padding()
            .onAppear {
                animatingDots = true
        }
            Button(action: {
                animatingDots.toggle()
            }) {
                Text(animatingDots ? "Stop" : "Start")
            }
        }
    }
}

#Preview {
    DancingDotsLoader()
}
