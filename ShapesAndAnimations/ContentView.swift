//
//  ContentView.swift
//  ShapesAndAnimations
//
//  Created by Olga Tegza on 27.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlanesView()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Planes")
                }
            
            HeartbeatView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Heartbeating")
                }
            PulseView()
                .tabItem{
                    Image(systemName: "target")
                    Text("Pulse")
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
