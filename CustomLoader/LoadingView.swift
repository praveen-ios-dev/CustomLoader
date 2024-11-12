//
//  LoadingView.swift
//  CustomLoader
//
//  Created by Arohi on 11/11/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack{
            SystemLoader()
        }.ignoresSafeArea()
    }
}

#Preview {
    LoadingView()
}
