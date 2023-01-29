//
//  HeartShapeView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct HeartShapeView: View {
    
    @State private var start = false
    
    var body: some View {
        
            Path {path in
                path.move(to: CGPoint(x: 200, y: 80))
                path.addCurve(to: CGPoint(x: 200, y: 350), control1: CGPoint(x: 380, y: 20), control2: CGPoint(x: 380, y: 200))
                path.addCurve(to: CGPoint(x: 200, y: 80), control1: CGPoint(x: 20, y: 200), control2: CGPoint(x: 20, y: 20))
            }
            .scaleEffect(0.5)
            .foregroundColor(.red)
            .opacity(0.8)
    }
}

struct HeartShapeView_Previews: PreviewProvider {
    static var previews: some View {
        HeartShapeView()
    }
}
