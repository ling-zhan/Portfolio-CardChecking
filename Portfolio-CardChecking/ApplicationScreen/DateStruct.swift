//
//  DateStruct.swift
//  Portfolio-CardChecking
//
//  Created by Ling on 2021/5/17.
//

import SwiftUI

struct DebitCard {
    let title: String, account:String, date:String, money: Int
}

struct TransactionItem {
    let icon: String, title: String, subscription: String, cust: String, date: Date
}

struct FuncationItem {
    let id = UUID(), image: String, color: Color, tag: String
}

struct FriendItem {
    let cover: String, name: String, color: Color
}



let DebitCardArr = [
    DebitCard(title: "Debit card 1", account: "8888 **** **** 8881", date: "08/08", money: 1500),
    DebitCard(title: "Debit card 2", account: "8888 **** **** 8882", date: "08/07", money: 3000),
    DebitCard(title: "Debit card 3", account: "8888 **** **** 8883", date: "08/06", money: 800)
]

let TransactionItemArr = [
    TransactionItem(icon: "photo", title: "Netflix", subscription: "Subscription", cust: "10", date: Date()),
    TransactionItem(icon: "photo", title: "Megogo", subscription: "Subscription", cust: "12", date: Date()),
    TransactionItem(icon: "photo", title: "Apple Music", subscription: "Subscription", cust: "11", date: Date()),
    TransactionItem(icon: "photo", title: "Uber", subscription: "Subscription", cust: "30", date: Date()),
    TransactionItem(icon: "photo", title: "SoundHound", subscription: "Subscription", cust: "30", date: Date()),
    TransactionItem(icon: "photo", title: "Youtube", subscription: "Subscription", cust: "20", date: Date()),
    TransactionItem(icon: "photo", title: "Whoscall", subscription: "Subscription", cust: "20", date: Date()),
]

let FuncationItemArr = [
    FuncationItem(image: "paperplane.fill", color: Color(#colorLiteral(red: 0.9425967336, green: 0.9151883721, blue: 0.9987298846, alpha: 1)), tag: "0"),
    FuncationItem(image: "arrow.up.arrow.down", color: Color(#colorLiteral(red: 0.9335333109, green: 0.9891629815, blue: 0.7970958352, alpha: 1)), tag: "1"),
    FuncationItem(image: "cart.fill", color: Color(#colorLiteral(red: 0.9988556504, green: 0.9315487146, blue: 0.9061473012, alpha: 1)), tag: "2"),
    FuncationItem(image: "rectangle.grid.1x2.fill", color: Color(#colorLiteral(red: 0.896017015, green: 0.9950935245, blue: 1, alpha: 1)), tag: "3")
]

let FriendArr = [
    FriendItem(cover: "person.crop.circle", name: "Marry Jason", color: Color(#colorLiteral(red: 0.9425967336, green: 0.9151883721, blue: 0.9987298846, alpha: 1))),
    FriendItem(cover: "person.crop.circle", name: "Alexander Williams", color: Color(#colorLiteral(red: 0.9335333109, green: 0.9891629815, blue: 0.7970958352, alpha: 1))),
    FriendItem(cover: "person.crop.circle", name: "Jessie Kendrik", color: Color(#colorLiteral(red: 0.9988556504, green: 0.9315487146, blue: 0.9061473012, alpha: 1))),
]
