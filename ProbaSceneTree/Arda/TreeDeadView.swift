//
//  TreeDeadView.swift
//  ProbaSceneTree
//
//  Created by Ivan Dimitrov on 23.12.20.
//

import SwiftUI
import SpriteKit

struct TreeDeadView: View {
    var body: some View {
        VStack {
             SpriteView(scene: TreeScene())
           
        }.frame(width: 480, height: 480 , alignment: .center)
    }
}

struct TreeDeadView_Previews: PreviewProvider {
    static var previews: some View {
        TreeDeadView()
    }
}
