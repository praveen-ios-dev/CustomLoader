//
//  RotatingArcLoader.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct RotatingArcLoader: View {
    @State private var isRotating = false
    
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.gray.opacity(0.3))
                
                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(style: StrokeStyle(
                        lineWidth: 4,
                        lineCap: .round
                    ))
                    .frame(width: 40, height: 40)
                    .foregroundColor(.blue)
                    .rotationEffect(Angle(degrees: isRotating ? 360 : 0))
                    .animation(
                        isRotating ?
                        .linear(duration: 1)
                        .repeatForever(autoreverses: false):
                                .default,
                        value: isRotating
                    )
            }
            .padding()
            .onAppear {
                isRotating = true
            }
            Button(action: {
                isRotating.toggle()
            }) {
                Text(isRotating ? "Stop" : "Start")
            }
        }
    }
}

#Preview {
    RotatingArcLoader()
}
