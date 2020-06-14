//
//  TextFieldPreview.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 09.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct TextFieldPreview: View {
    
    @State private var sampleText = "Buttons"
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: M7Paddings.all.s) {
                
                M7TextField(placeholder: "sdfsfs", text: $sampleText)
                
            }.padding()
            
        }.navigationBarTitle(sampleText)
    }
}

struct TextFieldPreview_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPreview()
    }
}
