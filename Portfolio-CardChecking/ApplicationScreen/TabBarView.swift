//
//  TabBarView.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct TabBarView: View {
    @State var selection = 0
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                IndexView()
                    .tabItem { Image(systemName: "house.fill").font(.title) }
                    .tag(0)
                OtherView()
                    .tabItem { Image(systemName: "square.grid.2x2.fill").font(.title) }
                    .tag(1)
            }
            .onAppear(perform: {
                // 沒辦法更改選中的 color，只能使用 .accentColor(.white) 這樣
                
                // 是否呈現半透明色
                UITabBar.appearance().isTranslucent = true
                // 更改 背景
                UITabBar.appearance().barTintColor = .black
                // item 一般 color
                UITabBar.appearance().tintColor = .white
                // item 未選中的 color
                UITabBar.appearance().unselectedItemTintColor = .gray
            })
        }

    }
    
//    func tabItemView(tag: )-> some View {
//        Image(systemName: "house.fill").font(.title).foregroundColor(.black)
//    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
