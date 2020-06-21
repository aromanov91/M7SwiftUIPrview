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
    
    @State var toggle: Bool = false
    
    @State var selectIndex = 0
    
    var body: some View {
        
        M7List {
            
            M7Row("Text")
            M7Row("Text", leadingImage: "book-open")
            M7Row("Toogle", type: .toggle, leadingImage: "book", toggle: $toggle)
            
            Section(header: M7Text("Link", style: .subtitle1)) {
                M7RowButton("Text", action: { self.setToggle() } )
                M7RowButton("Row", leadingImage: "book-open", action: { self.setToggle() } )
                M7RowButton("Delete", style: .delete, leadingImage: "book-open", action: { self.setToggle() } )
                M7RowButton("Link", style: .link, leadingImage: "book-open", action: { self.setToggle() } )
            }
            
            Section(header: M7Text("Radio", style: .subtitle1)) {
                


                M7Row("One", type: .radio, toggle: $toggle).onTapGesture {
                    self.toggle.toggle()
                }
                M7Row("One", type: .radio, toggle: $toggle).onTapGesture {
                    self.toggle.toggle()
                }

            }
            
        }.navigationBarTitle("List " + String(toggle.description))
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
    }
    
    func setToggle() {
        print("Work")
        self.toggle.toggle() 
    }
}

struct RowPreview_Previews: PreviewProvider {
    static var previews: some View {
        RowPreview()
    }
}
