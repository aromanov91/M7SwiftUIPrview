//
//  ContentView.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 07.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI

struct ContentView: View {
    var body: some View {
        M7Surface() {
            M7Text("Run!!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
