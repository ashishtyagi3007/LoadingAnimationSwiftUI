//
//  HorizontalSlidingBarView.swift
//  LoadingAnimationSwiftUI
//
//  Created by Ashish Tyagi on 12/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct HorizontalSlidingBarView: View {
    @State private var shouldAnimate = false
    var leftOffset: CGFloat = -100
     var rightOffset: CGFloat = 100
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue)
            .frame(width: 80, height: 20)
            .offset(x: shouldAnimate ? rightOffset : leftOffset)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
            .onAppear {
                self.shouldAnimate = true
            }
    }
}

struct HorizontalSlidingBarView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSlidingBarView()
    }
}
