//
//  BackgroundPreview.swift
//  DSOneDemo
//
//  Created by 18391981 on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct BackgroundPreview: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: M7Paddings.all.s) {
                
                M7Background(background: .primary) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onBackground.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Background(background: .secondary) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onBackground.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Background(background: .tertiary) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onBackground.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Background(background: .tertiary, padding: .s) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onBackground.highEmphasis)
                        Spacer()
                    }
                }
                
            }.padding(M7Paddings.all.m)
            
        }.navigationBarTitle("Surface")
    }
}

//struct SurfacePreview_Previews: PreviewProvider {
//    static var previews: some View {
//        SurfacePreview()
//    }
//}

