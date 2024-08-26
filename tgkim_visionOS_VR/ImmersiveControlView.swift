//
//  ContentView.swift
//  tgkim_visionOS_VR
//
//  Created by Tium Solutions on 8/22/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveControlView: View {
    
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    var body: some View {
        VStack {
            Button{
                //present VR world
                Task{
                    await openImmersiveSpace(id: "ImmersiveView") // 동기식 작업 in swift.
                }
                
            } label: {
                Image(systemName: "visionpro") // vision pro icon image name
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ImmersiveControlView()
}
