//
//  tgkim_visionOS_VRApp.swift
//  tgkim_visionOS_VR
//
//  Created by Tium Solutions on 8/22/24.
//

import SwiftUI

@main
struct tgkim_visionOS_VRApp: App {
    
    @State var immersionMode:ImmersionStyle = .full
    
    
    var body: some Scene {
        WindowGroup {
            ImmersiveControlView()
        }
        .defaultSize(width: 100, height: 50)
        .windowStyle(.plain)
        
        //VR
        ImmersiveSpace(id : "ImmersiveView"){
            //VR view
        }
        .immersionStyle(selection: $immersionMode, in: .full) //$immersionMode immersionMode 변수를 바인딩
    }
}
