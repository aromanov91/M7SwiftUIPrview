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
    
    @State var selectAction = "Select action"
    @State var selectModal = "Select modal"
    @State var date = Date()
    
    @State var error = false
    
    var body: some View {
        
        
        
        ScrollView {
            
            VStack(spacing: M7Paddings.all.s) {
                
                M7SelectAction(rows, selected: $selectAction)
                
                M7SelectModal(rows, selected: $selectModal)
                
                M7DatePicker(date: $date)
                
                
                if error {
                                   M7Text("Error").foregroundColor(M7Colors.error)
                               }
                
                M7Button(action: {
                    if self.selectModal == "Select modal" ||  self.selectAction == "Select action" {
                        
                        self.error = true
                        
                    } else {
                        
                        self.error = false
                    }
                }) {
                    Text("sdfds")
                }
                Spacer()
                
               
                
            }.padding(M7Paddings.all.m)
            
            
            
        }.navigationBarTitle("Select")
    }
}
