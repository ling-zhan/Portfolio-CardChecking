//
//  IndexView.swift
//  Portfolio-CardChecking
//
//  Created by Ling6079 on 2021/5/17.
//

import SwiftUI

struct IndexView: View {
    @State var showSwipeView: Bool = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                /* background */
                VStack(spacing: 0) {
                    Rectangle().foregroundColor(Color(#colorLiteral(red: 0.2029131651, green: 0.1682493389, blue: 0.2904703021, alpha: 1)))
                    Rectangle().foregroundColor(.white)
                }.edgesIgnoringSafeArea(.all)
            
                VStack {
                    /* header */
                    HStack {
                        Image("user")
                            .resizable()
                            .frame(width: 80, height: 80)
                        VStack {
                            Text("Michelle").foregroundColor(.white).bold()
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            Text("Wellcome back!").font(.footnote).foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        }
                        
                        Image(systemName: "slider.horizontal.3")
                            .font(.title).foregroundColor(.white)
                    }.padding()
                    
                    
                    /* main */
                    ZStack {
                        HomeView(size: geometry.size, showSwipeView: $showSwipeView)
                            .offset(x: showSwipeView == true ?  -geometry.size.width : 0)
                        SwipeView(size: geometry.size, showSwipeView: $showSwipeView)
                            .offset(x: showSwipeView == true ? 0 : geometry.size.width)
                    }.animation(.easeInOut)
                    
                    
                } // end VStack
            
            } // end ZStack
        } // end GeometryReader
    } // end body
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView()
    }
}
