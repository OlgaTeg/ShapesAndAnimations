//
//  HeartbeatView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct HeartbeatView: View {
    @State private var animationAmount: CGFloat = 1
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            HeartShapeView()
                .scaleEffect(animationAmount)
                .animation(
                    .spring(
                        response: 0.2,
                        dampingFraction: 0.3,
                        blendDuration: 0.8
                    )
                    .delay(0.2)
                    .repeatForever(autoreverses: true),
                    value: animationAmount)
                .onAppear {
                    animationAmount = 0.8
                }
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        HeartbeatView()
    }
}
