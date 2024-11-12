//
//  SystemLoader.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//


import Foundation
import SwiftUI

struct SystemLoader : UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = UIColor(.blue)
        activityIndicator.startAnimating()
        return activityIndicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

