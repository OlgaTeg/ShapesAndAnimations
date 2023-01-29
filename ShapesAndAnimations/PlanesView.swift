//
//  PlanesView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct PlanesView: View {
    
    @State private var start = false
    
    var body: some View {
        ZStack {
            
            Circle()
                .stroke()
                .frame(width: 200, height: 200)
                .foregroundColor(.orange)
            
            PlaneView(
                start: start,
                color: .blue,
                animation: .spring(
                response: 0.9,
                dampingFraction: 0.5
            )
                .speed(0.6),
                offset: -100
            )
                .onTapGesture {
                    start.toggle()
                }
            
            Circle()
                .stroke()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            
            PlaneView(
                start: start,
                color: .green,
                animation: .spring(
                response: 0.55,
                dampingFraction: 0.15
            )
                .speed(0.5),
                offset: -50
            )
                .onTapGesture {
                    start.toggle()
                }
            
            Circle()
                .stroke()
                .frame(width: 300, height: 300)
                .foregroundColor(.pink)
            
            PlaneView(
                start: start,
                color: .yellow,
                animation: .interpolatingSpring(stiffness: 0.4, damping: 1)
                .speed(2),
                offset: -150
            )
                .onTapGesture {
                    start.toggle()
                }
        }
    }
}

struct AnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        PlanesView()
    }
}

struct PlaneView: View {
    
    let start: Bool
    let color: Color
    let animation: Animation
    let offset: Double
    
    var body: some View {
        VStack {
            Image(systemName: "airplane")
                .font(.largeTitle)
                .foregroundColor(color)
                .offset(y: offset)
                .rotationEffect(.degrees(start ? 0 : -360))
                .animation(animation, value: start)
        }
    }
}
