//
//  ScalingCirclesView.swift
//  LoadingAnimationSwiftUI
//
//  Created by Ashish Tyagi on 12/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct ScalingCirclesView: View {
    
    @State private var shouldAnimate = false

    var body: some View {
        HStack {
            
        Circle()
            .fill(Color.pink)
            .frame(width: 20, height: 20)
            .scaleEffect(shouldAnimate ? 1.0 : 0.5)
            .animation(Animation.easeInOut(duration: 0.5).repeatForever())
            
        Circle()
          .fill(Color.pink)
          .frame(width: 20, height: 20)
          .scaleEffect(shouldAnimate ? 1.0 : 0.5)
            .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.3))
            
        Circle()
          .fill(Color.pink)
          .frame(width: 20, height: 20)
          .scaleEffect(shouldAnimate ? 1.0 : 0.5)
            .animation(Animation.easeInOut(duration: 0.5).repeatForever().delay(0.6))
            
        }
        .onAppear {
            self.shouldAnimate = true
        }
    }
}

struct ScalingCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        ScalingCirclesView()
    }
}
