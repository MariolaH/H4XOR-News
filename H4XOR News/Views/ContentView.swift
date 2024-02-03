//
//  ContentView.swift
//  H4XOR News
//
//  Created by Mariola Hullings on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                // NavigationLink - is going to create a button on the right-hand side of each cell and its going to trigger a presentation to the DetailView when its pressed
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        //Label - this is what each individual cell will show
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hi"),
//    Post(id: "3", title: "Hey")
//]
