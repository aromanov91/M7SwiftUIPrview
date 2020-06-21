//
//  TextFieldPreview.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 09.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

class TextFieldPreviewViewModel: ObservableObject {
    
    @Published var sampleText = "Text Field" {
        didSet {
            textCheck()
        }
    }
    @Published var helperText = "Enter Success or Error"
    @Published var helperStyle: M7TextFieldHelperStyle = .helperText
    
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


struct TextFieldPreview: View {
    
    @ObservedObject var viewModel = TextFieldPreviewViewModel()
    
    var body: some View {
        
        M7Scroll {
            
            VStack(spacing: M7Paddings.all.m) {
               
                M7TextField(placeholder: "Label", text: $viewModel.sampleText)
                
                M7TextField(placeholder: "Label", text: $viewModel.sampleText, helperText: $viewModel.helperText, helperStyle: $viewModel.helperStyle)
                
                M7TextField(placeholder: "Label", text: $viewModel.sampleText, helperText: $viewModel.helperText, helperStyle: $viewModel.helperStyle, leadingImage: "book", trallingImage: "book")
                
                                M7TextField(placeholder: "Label", text: $viewModel.sampleText, helperText: $viewModel.helperText, helperStyle: $viewModel.helperStyle, trallingImage: "calendar")
                
                M7TextField(placeholder: "Label", text: $viewModel.sampleText, helperText: $viewModel.helperText, helperStyle: $viewModel.helperStyle, trallingImage: "chevron-down")
                
                
            }.padding()
            
        }.navigationBarTitle(viewModel.sampleText)
    }
}

struct TextFieldPreview_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPreview()
    }
}
