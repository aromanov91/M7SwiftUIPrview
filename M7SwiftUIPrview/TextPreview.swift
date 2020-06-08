//
//  TextPreview.swift
//  DSOneDemo
//
//  Created by 18391981 on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct TextPreview: View {
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: M7Paddings.all.s){
                
                Group {
                    M7Text("largeTitle", style: .largeTitle)
                    M7Text("title1", style: .title1)
                    M7Text("title2", style: .title2)
                    M7Text("title3", style: .title3)
                    M7Text("subtitle1", style: .subtitle1)
                    M7Text("subtitle2", style: .subtitle2)
                    M7Text("button", style: .button)
                    M7Text("paragraph1", style: .paragraph1)
                    M7Text("paragraph2", style: .paragraph2)
                    M7Text("caption", style: .caption)
                }
                
                Group {
                    M7Text("overline", style: .overline)
                }
                
                Group {
                    M7Text("Lorem ipsum dolor sit amet, consectetur", style: .largeTitle)
                    M7Text("Lorem ipsum dolor sit amet, consectetur", style: .title1)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed", style: .title2)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do", style: .title3)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", style: .subtitle1)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .subtitle2)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .button)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .paragraph1)
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .paragraph2)
                    
                    M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .caption)
                    
                    //M7Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ", style: .overline)
                }
                
            }.padding()
            
        }
        
    }
    
}
