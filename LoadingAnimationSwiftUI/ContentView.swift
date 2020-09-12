//
//  ContentView.swift
//  LoadingAnimationSwiftUI
//
//  Created by Ashish Tyagi on 12/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            HorizontalSlidingBarView()
            
            VerticalBarsView()
            .padding(.top, 50)
            
            ScalingCirclesView()
            .padding(.top, 50)
            
            CircleWithWavesView()
            .padding(.top, 100)
            
            SlidingCirclesView()
            .padding(.top, 50)

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
