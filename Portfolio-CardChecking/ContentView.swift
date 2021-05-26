//
//  ContentView.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct ContentView: View {
    @State var isSignIn: Bool = false
    var body: some View {
        Group {
            if isSignIn {
                TabBarView()
//                HomeView()
            } else {
                WelcomeView(isSignIn: $isSignIn)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
