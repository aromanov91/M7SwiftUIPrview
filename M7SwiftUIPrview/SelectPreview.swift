//
//  M7Select.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 16.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct SelectPreview: View {
    
    var rows = ["Строчка", "Еще строчка", "kdsklf", "dgdfg", "kdsklf", "dgdfg", "kdsklf", "dgdfg", "kdsklf", "dgdfg", "kdsklf", "dgdfg", "kdsklf", "dgdfg"]
    
    @State var select = "Select"
    
    var body: some View {
        
        
        
        ScrollView {
            
            VStack(spacing: M7Paddings.all.s) {
                
               
                
                M7SelectModal(rows, selected: $select)
                
                M7SelectAction(rows, selected: $select)
                    
                
                
                Spacer()
                
            }.padding(M7Paddings.all.m)
            
            
            
        }.navigationBarTitle("Select")
    }
}
