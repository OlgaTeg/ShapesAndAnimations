//
//  CirclesView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        VStack (spacing: 30){
            HStack (spacing: 30){
                Circle ()
                    .strokeBorder(style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .butt,
                        lineJoin: .round,
                        dash: [1, 7],
                        dashPhase: 2)
                    )
                    .frame (width: 100, height: 100)
                    .foregroundColor(.blue)
                
                Circle ()
                    .strokeBorder (style: StrokeStyle(
                        lineWidth: 45,
                        lineCap: .butt,
                        dash: [7, 3],
                        dashPhase: 0)
                    )
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
            }
            
            HStack (spacing: 30){
                Circle ()
                    .strokeBorder(style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round,
                        lineJoin: .round,
                        miterLimit: 1,
                        dash: [2, 13],
                        dashPhase: 1)
                    )
                    .frame (width: 100, height: 100)
                    .foregroundColor(.green)
                
                Circle()
                    .strokeBorder (style: StrokeStyle(
                        lineWidth: 40,
                        lineCap: .square,
                        lineJoin: .miter,
                        miterLimit: 1,
                        dash: [9, 10],
                        dashPhase: 1)
                    )
                    .frame (width: 100, height: 100)
                    .foregroundColor(.gray)
            }
            
            HStack (spacing: 30){
                Circle ()
                    .strokeBorder(style: StrokeStyle(
                        lineWidth: 2,
                        lineCap: .round,
                        lineJoin: .round,
                        miterLimit: 1,
                        dash: [7, 7],
                        dashPhase: 1)
                    )
                    .frame (width: 100, height: 100)
                    .foregroundColor(.indigo)
                
                Circle ()
                    .strokeBorder(style: StrokeStyle(
                        lineWidth: 50,
                        lineCap: .butt,
                        lineJoin: .miter,
                        miterLimit: 1,
                        dash: [20, 10],
                        dashPhase: 0)
                    )
                    .frame (width: 100, height: 100)
                    .foregroundColor(.purple)
            }
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}
