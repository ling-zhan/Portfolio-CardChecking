//
//  HomeView.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct HomeView: View {
    var size: CGSize
    
    @State var debitCardArr = DebitCardArr
    @State var transactionItemArr = TransactionItemArr
    @State var funcationItemArr = FuncationItemArr
    
    @State var selection: String?
    
    @Binding var showSwipeView: Bool
    
    var body: some View {
        /* home View */
        VStack(spacing: 0) {
            Text("My cards").font(.title2).padding().padding(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            
            TabView {
                ForEach(debitCardArr, id:\.self.title) { card in
                    debitCardView(title: card.title, account: card.account, date: card.date, money: card.money)
                        .modifier(debitCardModifier(width: size.width))
                }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: size.width * 0.6)
            .onAppear(perform: {
                // 更改 page index color
                UIPageControl.appearance().currentPageIndicatorTintColor = .gray
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
            })
            
            
            HStack(spacing: 20) {
                ForEach(funcationItemArr, id:\.self.id) { item in
                    Button(action: {
                        showSwipeView.toggle()
                    }, label: {
                        Image(systemName: item.image).padding()
                            .foregroundColor(.black)
                            .background(item.color)
                            .cornerRadius(12)
                    })
                }
            }
            
            Text("Transactions").font(.title2).padding().padding(.leading)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            ScrollView {
                ForEach(transactionItemArr, id:\.self.date) { item in
                    transactionItemView(icon: item.icon, title: item.title, subscription: item.subscription, cust: item.cust, date: item.date)
                        .padding().padding(.horizontal)
                }
            }
            
        } // end VStack
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(40)
    } // end body

    func debitCardView(title: String, account:String, date:String, money: Int) -> some View {
        VStack {
            Text(title).font(.callout).foregroundColor(.white).bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Spacer()
            HStack() {
                Text(account).font(.body).foregroundColor(.white)
                Spacer()
                Text(date).font(.body).foregroundColor(.white)
            }
            Spacer()
            Text("$"+String(money)).font(.title).foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
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
    
    func transactionItemView(icon: String, title: String, subscription: String, cust: String, date: Date) -> some View {
        HStack {
            Image(systemName: icon).font(.largeTitle)
            VStack {
                Text(title).font(.headline)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text(subscription).font(.footnote).foregroundColor(.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
            VStack {
                Text("$\(cust)").font(.headline)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                Text(date, style: .date).font(.footnote).foregroundColor(.gray)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            }
        }
    } // end transactionItem
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HomeView(size: geometry.size, showSwipeView: .constant(false))
        }
    }
}
