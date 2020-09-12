//
//  VerticalBarsView.swift
//  LoadingAnimationSwiftUI
//
//  Created by Ashish Tyagi on 12/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct VerticalBarsView: View {
    @State private var shouldAnimate = false

    var body: some View {
        HStack(alignment: .center, spacing: shouldAnimate ? 15 : 5) {
            Capsule(style: .circular)
                .fill(Color.red)
                .frame(width: 10, height: 50)
            Capsule(style: .circular)
                .fill(Color.black)
                .frame(width: 10, height: 30)
            Capsule(style: .circular)
                .fill(Color.red)
                .frame(width: 10, height: 50)
            Capsule(style: .circular)
                .fill(Color.black)
                .frame(width: 10, height: 30)
            Capsule(style: .circular)
                .fill(Color.red)
                .frame(width: 10, height: 50)
        }
        .frame(width: 200)
        .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
        .onAppear {
            self.shouldAnimate = true
        }
    }
}

struct VerticalBarsView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalBarsView()
    }
}
