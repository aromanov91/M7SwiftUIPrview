//
//  RowPreview.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 13.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct RowPreview: View {
    var body: some View {
        
        List {
            
            M7Row("Text")
            M7Row("Text", leadingImage: "book-open")
            
        }.navigationBarTitle("List")
    }
}

struct RowPreview_Previews: PreviewProvider {
    static var previews: some View {
        RowPreview()
    }
}
