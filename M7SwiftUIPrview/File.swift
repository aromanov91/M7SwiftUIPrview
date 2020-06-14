////
////  File.swift
////  M7SwiftUIPrview
////
////  Created by 18391981 on 14.06.2020.
////  Copyright © 2020 romanov. All rights reserved.
//
//import SwiftUI
//
//struct ContentView: View {
//    
//    @State var selected = ""
//    @State var show = false
//    
//    var body: some View {
//        
//        ZStack{
//            
//            VStack{
//                
//                Button(action: {
//                    
//                    self.show.toggle()
//                    
//                }) {
//                    
//                Text("Open").padding(.vertical).padding(.horizontal,25).foregroundColor(.white)
//                }
//                .background(LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1")]), startPoint: .leading, endPoint: .trailing))
//                .clipShape(Capsule())
//                
//                Text(self.selected).padding(.top)
//            }
//            
//            VStack{
//                
//                Spacer()
//                
//                RadioButtons(selected: self.$selected,show: self.$show).offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)
//                
//            }.background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
//            
//        }.background(Color("Color2").edgesIgnoringSafeArea(.all))
//        .animation(.default)
//    }
//}
//
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
//
//struct RadioButtons : View {
//    
//    @Binding var selected : String
//    @Binding var show : Bool
//    
//    var body : some View{
//        
//        VStack(alignment: .leading, spacing: 20) {
//            
//            Text("Filter By").font(.title).padding(.top)
//            
//            ForEach(data,id: \.self){i in
//                
//                Button(action: {
//                    
//                    self.selected = i
//                    
//                }) {
//                    
//                    HStack{
//                        
//                        Text(i)
//                        
//                        Spacer()
//                        
//                        ZStack{
//                            
//                            Circle().fill(self.selected == i ? Color("Color") : Color.black.opacity(0.2)).frame(width: 18, height: 18)
//                            
//                            if self.selected == i{
//                                
//                                Circle().stroke(Color("Color1"), lineWidth: 4).frame(width: 25, height: 25)
//                            }
//                        }
//                        
//
//                        
//                    }.foregroundColor(.black)
//                    
//                }.padding(.top)
//            }
//            
//            HStack{
//                
//                Spacer()
//                
//                 Button(action: {
//                     
//                    self.show.toggle()
//                    
//                 }) {
//                     
//                     Text("Continue").padding(.vertical).padding(.horizontal,25).foregroundColor(.white)
//                     
//                 }
//                 .background(
//                    
//                    self.selected != "" ?
//                    
//                    LinearGradient(gradient: .init(colors: [Color("Color"),Color("Color1")]), startPoint: .leading, endPoint: .trailing) :
//                    
//                        LinearGradient(gradient: .init(colors: [Color.black.opacity(0.2),Color.black.opacity(0.2)]), startPoint: .leading, endPoint: .trailing)
//                 
//                 )
//                .clipShape(Capsule())
//                .disabled(self.selected != "" ? false : true)
//                
//                
//            }.padding(.top)
//            
//        }.padding(.vertical)
//        .padding(.horizontal,25)
//        .padding(.bottom,(UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15)
//        .background(Color.white)
//        .cornerRadius(30)
//    }
//}
//
//var data = ["Revelance","Newest","Price(low to high)","Price(high to low)","Sort by Specs","Sort By Storage"]
//
//
////import SwiftUI
////
////struct SlideOverCard<Content: View> : View {
////    @GestureState private var dragState = DragState.inactive
////    @State var position = CardPosition.top
////
////    var content: () -> Content
////    var body: some View {
////        let drag = DragGesture()
////            .updating($dragState) { drag, state, transaction in
////                state = .dragging(translation: drag.translation)
////            }
////            .onEnded(onDragEnded)
////
////        return Group {
////            //Handle()
////            self.content()
////        }
////        .frame(height: UIScreen.main.bounds.height)
////        .background(Color.white)
////        .cornerRadius(10.0)
////        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.13), radius: 10.0)
////        .offset(y: self.position.rawValue + self.dragState.translation.height)
////        //.animation(self.dragState.isDragging ? nil : .spring(stiffness: 300.0, damping: 30.0, initialVelocity: 10.0))
////        .gesture(drag)
////    }
////
////    private func onDragEnded(drag: DragGesture.Value) {
////        let verticalDirection = drag.predictedEndLocation.y - drag.location.y
////        let cardTopEdgeLocation = self.position.rawValue + drag.translation.height
////        let positionAbove: CardPosition
////        let positionBelow: CardPosition
////        let closestPosition: CardPosition
////
////        if cardTopEdgeLocation <= CardPosition.middle.rawValue {
////            positionAbove = .top
////            positionBelow = .middle
////        } else {
////            positionAbove = .middle
////            positionBelow = .bottom
////        }
////
////        if (cardTopEdgeLocation - positionAbove.rawValue) < (positionBelow.rawValue - cardTopEdgeLocation) {
////            closestPosition = positionAbove
////        } else {
////            closestPosition = positionBelow
////        }
////
////        if verticalDirection > 0 {
////            self.position = positionBelow
////        } else if verticalDirection < 0 {
////            self.position = positionAbove
////        } else {
////            self.position = closestPosition
////        }
////    }
////}
////
////enum CardPosition: CGFloat {
////    case top = 100
////    case middle = 500
////    case bottom = 850
////}
////
////enum DragState {
////    case inactive
////    case dragging(translation: CGSize)
////
////    var translation: CGSize {
////        switch self {
////        case .inactive:
////            return .zero
////        case .dragging(let translation):
////            return translation
////        }
////    }
////
////    var isDragging: Bool {
////        switch self {
////        case .inactive:
////            return false
////        case .dragging:
////            return true
////        }
////    }
////}
//
////fileprivate enum Constants {
////    static let radius: CGFloat = 16
////    static let indicatorHeight: CGFloat = 6
////    static let indicatorWidth: CGFloat = 60
////    static let snapRatio: CGFloat = 0.25
////    static let minHeightRatio: CGFloat = 0.3
////}
////
////struct BottomSheetView<Content: View>: View {
////    @Binding var isOpen: Bool
////
////    let maxHeight: CGFloat
////    let minHeight: CGFloat
////    let content: Content
////
////    @GestureState private var translation: CGFloat = 0
////
////    private var offset: CGFloat {
////        isOpen ? 0 : maxHeight - minHeight
////    }
////
////    private var indicator: some View {
////        RoundedRectangle(cornerRadius: Constants.radius)
////            .fill(Color.secondary)
////            .frame(
////                width: Constants.indicatorWidth,
////                height: Constants.indicatorHeight
////        ).onTapGesture {
////            self.isOpen.toggle()
////        }
////    }
////
////    init(isOpen: Binding<Bool>, maxHeight: CGFloat, @ViewBuilder content: () -> Content) {
////        self.minHeight = maxHeight * Constants.minHeightRatio
////        self.maxHeight = maxHeight
////        self.content = content()
////        self._isOpen = isOpen
////    }
////
////    var body: some View {
////        GeometryReader { geometry in
////            VStack(spacing: 0) {
////                self.indicator.padding()
////                self.content
////            }
////            .frame(width: geometry.size.width, height: self.maxHeight, alignment: .top)
////            .background(Color(.secondarySystemBackground))
////            .cornerRadius(Constants.radius)
////            .frame(height: geometry.size.height, alignment: .bottom)
////            .offset(y: max(self.offset + self.translation, 0))
////            .animation(.interactiveSpring())
////            .gesture(
////                DragGesture().updating(self.$translation) { value, state, _ in
////                    state = value.translation.height
////                }.onEnded { value in
////                    let snapDistance = self.maxHeight * Constants.snapRatio
////                    guard abs(value.translation.height) > snapDistance else {
////                        return
////                    }
////                    self.isOpen = value.translation.height < 0
////                }
////            )
////        }
////    }
////}
////
////
////struct ContentView: View {
////    @State private var bottomSheetShown = false
////
////    var body: some View {
////        GeometryReader { geometry in
////            Color.green
////            BottomSheetView(
////                isOpen: self.$bottomSheetShown,
////                maxHeight: geometry.size.height * 0.7
////            ) {
////                Color.blue
////            }
////        }.edgesIgnoringSafeArea(.all)
////    }
////}
////
////struct BottomSheetView_Previews: PreviewProvider {
////    static var previews: some View {
////        BottomSheetView(isOpen: .constant(false), maxHeight: 600) {
////            Rectangle().fill(Color.red)
////        }.edgesIgnoringSafeArea(.all)
////    }
////}
