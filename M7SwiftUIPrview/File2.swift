//
//  File2.swift
//  M7SwiftUIPrview
//
//  Created by 18391981 on 14.06.2020.
//  Copyright © 2020 romanov. All rights reserved.
//

import SwiftUI
import M7SwiftUI



struct ContentView: View {
    
    @State var selected = "Select color"
    @State var show = false
    
    public var data = ["Revelance","Newest","Price(low to high)","Price(high to low)"]
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                M7Button(action: {
                    self.show.toggle()
                }) {
                    Text(self.selected)
                }
                
//                M7TextField(placeholder: "fdsf", text: $selected)
//
//
//
//                    .onTapGesture {
//
//
//
//
//
//                         self.show.toggle()
//
//
//                }
                    
    
                
                
                
                
//                M7TextField("dfsdfsdg", text: $selected).onTapGesture {
//                    self.show.toggle()
//                }
            }
            
            VStack{
                
                Spacer()
                
                RadioButtons(selected: self.$selected, show: self.$show, data: self.data).offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)
                
            }.background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
            
        }.animation(.default)
    }
}

struct RadioButtons : View {
    
    @Binding var selected : String
    @Binding var show : Bool
    
    public var data: [String]
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 20) {
            
            M7Text("Filter By", style: .largeTitle).padding(.top)
            
            ForEach(data,id: \.self) { i in
                
                Button(action: {
                    
                    self.selected = i
                    
                }) {
                    
                    HStack{
                        
                        M7Text(i)
                        
                        Spacer()
                        
                        ZStack{
                            
                            Circle().stroke(self.selected == i ? M7Colors.primary : M7Colors.onSurface.disabled, lineWidth: 2).frame(width: 24, height: 24)
                            
                            if self.selected == i {
                                
                                Circle().fill(M7Colors.primary).frame(width: 24, height: 24)
                                    .cornerRadius(12)
                                
                                Circle().fill(Color.white).frame(width: 8, height: 8)
                                    .cornerRadius(4)
                                
                            }
                        }
                        
                        
                        
                    }.foregroundColor(.black)
                    
                }.padding(.top)
            }
            
            HStack{
                
                M7Button(action: {
                    self.show.toggle()
                }) {
                    Text("Continue")
                }
                
            }.padding(.top)
            
        }.padding(.vertical)
            .padding(.horizontal,25)
            .padding(.bottom,(UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15)
            .background(M7Colors.surface.primary)
            .cornerRadius(30)
    }
}



