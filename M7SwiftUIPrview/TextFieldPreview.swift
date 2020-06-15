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
    
    @State private var sampleText = "Text Field"
    @State private var helperText = "Enter Success or Error"
    @State private var helperStyle: M7TextFieldHelperStyle = .helperText
    
    var body: some View {

        ScrollView {

            VStack(spacing: M7Paddings.all.m) {

                M7TextField(placeholder: "Label", text: $sampleText)

                M7TextField(placeholder: "Label", text: $sampleText, helperText: $helperText, helperStyle: $helperStyle)

                M7Button(action: { self.textCheck() }) {
                    Text("Check")
                }

            }.padding()

        }.navigationBarTitle(sampleText)
    }

    func textCheck() {

        if sampleText == "Success" {
            helperStyle = .sussesText

        } else if sampleText == "Error" {
            helperStyle = .errorText
        } else {
            helperStyle = .helperText
        }
    }
}

struct TextFieldPreview_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPreview()
    }
}
