//
//  ContentView.swift
//  DSOneDemo
//
//  Created by 18391981 on 12.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct ButtonsPreview: View {
    var body: some View {
        
        ScrollView() {
            
            VStack(spacing: 24) {
                
                M7Button(action: { print("work") }) {
                    Text("Default")
                }
                
                M7Button(buttonStyle: .primary, shadow: true, action: { print("work") }) {
                    Text("Primary")
                }
                
                M7Button(buttonStyle: .secondary, size: .m, round: .full, shadow: true, action: { print("work") }) {
                    Text("Secondary")
                }
                
                M7Button(buttonStyle: .gray, round: .full, shadow: false, action: { print("work") }) {
                    Text("Gray")
                }
                
                M7Button(buttonStyle: .link, shadow: false, action: { print("work") }) {
                    Text("Link")
                }
                
                M7Button(buttonStyle: .deleteLink, shadow: false, action: { print("work") }) {
                    Text("DeleteLink")
                }
                
                M7Button(buttonStyle: .primary, round: .none, shadow: true, action: { print("work") }) {
                    Text("Primary")
                }
                
            }.padding()
            
        }.navigationBarTitle("Buttons")
        
        .navigationBarItems(trailing:
            Button("Help") {
                print("Help tapped!")
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsPreview()
    }
}
