//
//  PulseView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct PulseView: View {
    @State private var animate = false
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.yellow.opacity (0.25))
                .frame(width: 350, height: 350)
                .scaleEffect (animate ? 1: 0)
            
            Circle()
                .fill(Color.orange.opacity(0.35))
                .frame (width: 250, height: 250)
                .scaleEffect (animate ? 1: 0)
            
            Circle()
                .fill(Color.red.opacity (0.45))
                .frame(width: 150, height: 150)
                .scaleEffect (animate ? 1 : 0)
            
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.red)
                
        }
        .onAppear {
            animate.toggle ()
        }
        .animation(.timingCurve(0.83, 0, 0.17, 1, duration: 3).repeatForever())
        
    }
}

struct PulseView_Previews: PreviewProvider {
    static var previews: some View {
        PulseView()
    }
}
