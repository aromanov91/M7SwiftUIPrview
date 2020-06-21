//
//  AlertPreview.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 21.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct AlertPreview: View {
    
    @State var showAlert = false
    
    var body: some View {
        
        M7Button(action: {  self.showAlert.toggle() }) {
            Text("Action")
            }.padding()
        
        .alert(isPresented: $showAlert) { () -> Alert in
            Alert(title: Text("Title"))
        }
    }
}

struct AlertPreview_Previews: PreviewProvider {
    static var previews: some View {
        AlertPreview()
    }
}
