//
//  WelcomeView.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var isSignIn: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                Rectangle().foregroundColor(Color(#colorLiteral(red: 0.2029131651, green: 0.1682493389, blue: 0.2904703021, alpha: 1))).edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center) {
                    Text("Wellcome").font(.title).foregroundColor(.white).padding()
                    Text("Scan your fingerprint to Sign In").font(.footnote).foregroundColor(.white)
                    
                    ZStack {
                        ZStack {
                            Circle().foregroundColor(Color(#colorLiteral(red: 0.3716597286, green: 0.1790724826, blue: 0.8803741408, alpha: 1))).frame(width: 120, height: 120)
                            Image(systemName: "touchid")
                                .font(.system(size: 50))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding()
                        }.onTapGesture(perform: {
                            isSignIn.toggle()
                        })
                        
                        Circle()
                            .foregroundColor(.clear)
                            .overlay(Circle().strokeBorder(Color(#colorLiteral(red: 0.3716597286, green: 0.1790724826, blue: 0.8803741408, alpha: 1)), lineWidth: 1.0))
                            .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.6)
                        
                        Circle()
                            .foregroundColor(.clear)
                            .overlay(Circle().strokeBorder(Color(#colorLiteral(red: 0.3716597286, green: 0.1790724826, blue: 0.8803741408, alpha: 1)), lineWidth: 1.0))
                            .opacity(0.8)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
                        
                        Circle()
                            .foregroundColor(.clear)
                            .overlay(Circle().strokeBorder(Color(#colorLiteral(red: 0.3716597286, green: 0.1790724826, blue: 0.8803741408, alpha: 1)), lineWidth: 1.0))
                            .opacity(0.5)
                            .frame(width: geometry.size.width * 1, height: geometry.size.width * 1)
                    }.clipped()
                    
                    HStack(spacing: 30) {
                        Text("Slgn In with phone number").font(.footnote).foregroundColor(.white)
                        Image(systemName: "arrow.right.circle.fill")
                            .font(.largeTitle).foregroundColor(.white)
                    }.padding()
                    
                    
                }
                
            }
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(isSignIn: .constant(false))
    }
}
