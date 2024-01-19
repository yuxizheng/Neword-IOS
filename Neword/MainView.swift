//
//  MainView.swift
//  Neword
//
//  Created by 郑语悉 on 2022/11/14.
//

import Foundation
import SwiftUI

struct Mainview: View{
    @State private var showMenu = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View{
        let drag = DragGesture()
            .onChanged{
                dragAmount = $0.translation
            }
            .onEnded {
                _ in
                if dragAmount.width < -40{
                    withAnimation {
                        self.showMenu = false
                    }
                }
                dragAmount = .zero
            }
        
        GeometryReader{ geometry in
            ZStack(alignment: .leading){
                NavigateView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .zIndex(1)
                if self.showMenu{
                    MenuView()
                        .frame(width: geometry.size.width * (3/4))
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
                        .offset(x: (dragAmount.width < 0 ? dragAmount.width : 0))
                        .gesture(drag)
                        .zIndex(2)
                }
            }
        }
    }
}
