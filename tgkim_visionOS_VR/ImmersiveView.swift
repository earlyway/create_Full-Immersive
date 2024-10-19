//
//  ImmersiveView.swift
//  tgkim_visionOS_VR
//
//  Created by Tium Solutions on 8/26/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView{content in
            
            //skybox entity
            guard let skyBoxEntity = createSkyBox() else{
                print("Error loading skybox entity")
                return
            }
            
            //get earth entity
            let earthEntity = await createEarthModel()
            
            //add to realityview
            content.add(skyBoxEntity)
            content.add(earthEntity)
            
        }
    }
    private func createSkyBox() ->Entity? {
        //mesh
        let largeSphere = MeshResource.generateSphere(radius: 1000)
        
        //material
        var skyBoxMaterial = UnlitMaterial()
        do {
            let texture = try TextureResource.load(named: "StarryNight")
            skyBoxMaterial.color = .init(texture: .init(texture))
        } catch{
            print("Error loading texture : \(error)")
        }
        
        //Skybox entity
        let skyBoxEntity = Entity()
        skyBoxEntity.components.set(
            ModelComponent(
                mesh: largeSphere,
                materials: [skyBoxMaterial])
            )
        
        //Map texture to inner surface. not outside surface
        skyBoxEntity.scale *= .init(x:-1, y:1, z:1)
        
        return skyBoxEntity
        
    }
    private func createEarthModel() async -> Entity{
        guard let earthEntity = try? await Entity(named: "Scene", in: realityKitContentBundle) else{
            fatalError("Cant load earth model")
        }
        return earthEntity
    }
}

#Preview {
    ImmersiveView()
}
