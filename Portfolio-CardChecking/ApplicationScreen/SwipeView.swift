//
//  SwipeView.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct SwipeView: View {
    var size: CGSize
    @Binding var showSwipeView: Bool
    
    @State var friendArr = FriendArr
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Image(systemName: "chevron.backward").font(.title2).padding().padding(.leading)
                    .foregroundColor(.gray)
                Text("New transaction").font(.title2).padding()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }.background(Color.white)
            .onTapGesture(perform: {
                showSwipeView.toggle()
            })

            Text("From").font(.title3).padding().padding(.leading).foregroundColor(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
                debitCardView(title: "Debit card 1", account: "8888 **** **** 8881", date: "08/08")
                    .modifier(debitCardModifier(width: size.width))
            
            Text("Amount").font(.title3).padding().padding(.leading).foregroundColor(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Text("$130").font(.largeTitle).padding(.leading)
            
            
            Text("To").font(.title2).padding().padding(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            ScrollView {
                ForEach(friendArr, id: \.self.name) { friend in
                    friendView(cover: friend.cover, name: friend.name, color: friend.color)
                }
            }
            
        } // end VStack
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(40)
    }
    
    func friendView(cover: String, name: String, color: Color) -> some View {
        HStack {
            Image(systemName: cover).font(.title).padding(.all, 10)
                .background(color).clipShape(Circle())
            Text(name).font(.headline).padding()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }.padding(.leading).padding(.leading)
    }
    
    func debitCardView(title: String, account:String, date:String) -> some View {
        VStack {
            Text(title).font(.callout).foregroundColor(.white).bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Spacer()
            HStack() {
                Text(account).font(.body).foregroundColor(.white)
                Spacer()
                Text(date).font(.body).foregroundColor(.white)
            }
        }
    }
    
    /* Item Style */
    private struct debitCardModifier: ViewModifier {
        let width: CGFloat
        func body(content: Content) -> some View {
            return content
                .padding()
                .frame(width: width * 0.85, height: width * 0.4).cornerRadius(20)
                .background(Color(#colorLiteral(red: 0.4297361076, green: 0.2054079175, blue: 0.9986986518, alpha: 1)))
                .cornerRadius(20)
        }
    } // end selectItemModifier
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            SwipeView(size: geometry.size, showSwipeView: .constant(true))
        }
    }
}
