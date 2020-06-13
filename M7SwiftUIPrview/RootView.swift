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
    
    var body: some View {
        
        NavigationView {
            
            M7List {

                NavigationLink(destination: ButtonsPreview()) {
                    M7Row("Buttons")
                }

                NavigationLink(destination: SurfacePreview()) {
                    M7Row("Surface")
                }

                NavigationLink(destination: BackgroundPreview()) {
                    M7Row("Background")
                }

                NavigationLink(destination: TextPreview()) {
                    M7Row("Text")
                }

                NavigationLink(destination: TextFieldPreview()) {
                    M7Row("Text field")
                }

                NavigationLink(destination: RowPreview()) {
                    M7Row("Row")
                }

                NavigationLink(destination: ThemePrview()) {
                    M7Row("Colors")
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
