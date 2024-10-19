//
//  tgkim_visionOS_VRApp.swift
//  tgkim_visionOS_VR
//
//  Created by Tium Solutions on 8/22/24.
//

import SwiftUI

@main
struct tgkim_visionOS_VRApp: App {
    
    @State var immersionMode:ImmersionStyle = .progressive
    
    
    var body: some Scene {
        WindowGroup {
            ImmersiveControlView()
        }
        .defaultSize(width: 100, height: 50)
        .windowStyle(.plain)
        
        
        //VR
        ImmersiveSpace(id : "ImmersiveView"){
            //VR view
            ImmersiveView()
        }
        .immersionStyle(selection: $immersionMode, in: .progressive) //$immersionMode immersionMode 변수를 바인딩
                            // .full : 현실 세계가 보이는 패스스루 외부 카메라를 전부 차단. 완전한 몰입형 환경으로 들어감. 오직 몰입형 환경 내부로 정의됨.
    }
}
