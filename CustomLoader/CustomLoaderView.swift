//
//  ContentView.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct CustomLoaderView: View {
    var body: some View{
        TabView{
            LoadingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("System Loader")
                }
            ImageLoader()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Image Loader")
                }
            CircleLoader()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("Circle Loader")
                }
            RotatingArcLoader()
                .tabItem {
                    Image(systemName: "rotate.3d")
                    Text("Rotating Arc")
                }
            DancingDotsLoader()
                .tabItem {
                    Image(systemName: "figure.dance")
                    Text("Dancing Dot")
                }
            
        }
    }
}


#Preview {
    CustomLoaderView()
}
