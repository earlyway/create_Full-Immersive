//
//  ContentView.swift
//  tgkim_visionOS_VR
//
//  Created by Tium Solutions on 8/22/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Button{
                //do something
            } label: {
                Image(systemName: "visionpro pro")
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
