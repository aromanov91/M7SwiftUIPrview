//
//  SurfacePreview.swift
//  DSOneDemo
//
//  Created by 18391981 on 15.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct SurfacePreview: View {
    
    var body: some View {
        
        
        
        ScrollView {
            
            VStack(spacing: M7Paddings.all.s) {
                
                M7Surface(elevation: .z0) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z1) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z2) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z3) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z4) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z4, background: .primary) {
                    HStack {
                        Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                        Spacer()
                    }
                }
                
                M7Surface(elevation: .z4, background: .secondary) {
                                   HStack {
                                       Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                                       Spacer()
                                   }
                               }
                
                M7Surface(elevation: .z4, background: .tertiary) {
                                   HStack {
                                       Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
                                       Spacer()
                                   }
                               }
                
                
                
            
                
            }.padding(M7Paddings.all.m)
            
        }.navigationBarTitle("Surface")
        
    }
}

struct SurfacePreview_Previews: PreviewProvider {
    static var previews: some View {
        SurfacePreview()
    }
}
