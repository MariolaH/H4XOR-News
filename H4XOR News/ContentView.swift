//
//  ContentView.swift
//  H4XOR News
//
//  Created by Mariola Hullings on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) {
                post in Text(post.title)
            }
            Text("Hello, world!")
//            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        }
        .navigationTitle("H4XOR NEWS")
        }
    }

#Preview {
    ContentView()
}

struct Post: Identifiable {
let id: String
let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hi"),
    Post(id: "3", title: "Hey")
]
