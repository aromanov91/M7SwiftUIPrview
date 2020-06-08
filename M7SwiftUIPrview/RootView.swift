//
//  GeneralView.swift
//  DSOneDemo
//
//  Created by 18391981 on 15.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct RootView: View {
    
    init() { UITableView.appearance().separatorStyle = .none }

    var body: some View {
        
        NavigationView {
            
            List {
                
                NavigationLink(destination: ButtonsPreview()) {
                    Text("Buttons")
                }
                
                NavigationLink(destination: SurfacePreview()) {
                    Text("Surface")
                }
                
                NavigationLink(destination: BackgroundPreview()) {
                    Text("Background")
                }
                
                NavigationLink(destination: TextPreview()) {
                    Text("Text")
                }
                
                NavigationLink(destination: ThemePrview()) {
                    Text("Colors")
                }
                
            }.navigationBarTitle("General")
            
        }
    }
    
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
