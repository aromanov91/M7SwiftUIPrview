//
//  SwiftUIView.swift
//  DSOneDemo
//
//  Created by 18391981 on 16.05.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct ThemePrview: View {
    
    var body: some View {
        
        List {
            
            HStack {
                
                Rectangle()
                    .frame(width: 20, height: 20)
                    .cornerRadius(10)
                    .foregroundColor(M7Colors.primary)
                
                Text("Primary").foregroundColor(M7Colors.onSurface.highEmphasis)
                
                Spacer()

            }
            
//            M7Button(color: M7Colors.surface.primary, action: { print("sdfff") }, content: {
//                Text("Test").foregroundColor(M7Colors.onSurface.highEmphasis)
//            })
            
                .background(M7Colors.background.primary)
        }.navigationBarTitle("Colors")
           
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ThemePrview()
    }
}
