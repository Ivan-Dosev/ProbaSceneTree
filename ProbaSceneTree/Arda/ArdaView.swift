//
//  ArdaView.swift
//  ProbaSceneTree
//
//  Created by Ivan Dimitrov on 23.12.20.
//

import SwiftUI

struct ArdaView: View {
    @State var newNumber = UserDefaults.standard.integer(forKey: "Arda")
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    ViewTree()
                } .frame(width: 480, height: 480 , alignment: .center)
                
                Text("arda \(newNumber)")
            }
        }
    }
}

struct ArdaView_Previews: PreviewProvider {
    static var previews: some View {
        ArdaView()
    }
}
