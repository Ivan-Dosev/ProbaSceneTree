//
//  ContentView.swift
//  ProbaSceneTree
//
//  Created by Ivan Dimitrov on 23.12.20.
//

import SwiftUI

struct ContentView: View {
    @State var isShow: Bool = false
    @State var isDead: Bool = false
    @State var number : Int = 0
    
    var body: some View {
        VStack {
            VStack {
                
                Picker(selection: $number, label: Text("")) {
                    Text("Tree100").tag(0)
                    Text("Tree200").tag(1)
                    Text("Tree300").tag(2)
                    Text("Tree400").tag(3)
                }
                
            }.frame(width: 400, height: 400, alignment: .center)

            HStack {
                Button(action: {
                    UserDefaults.standard.set(number, forKey: "Arda")
                    self.isShow.toggle()
                    
                }) { Text("🐭") }
                .sheet(isPresented: $isShow) { ArdaView() }
                
                Button(action: {
                    UserDefaults.standard.set(number, forKey: "Arda")
                    self.isDead.toggle()
                    
                }) { Text("🐶") }
                .sheet(isPresented: $isDead) { TreeDeadView() }
            }

            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
