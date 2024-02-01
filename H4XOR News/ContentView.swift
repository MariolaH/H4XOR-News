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
        List {
            Text("Hello, world!")
            Text("Good bye, world!")
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        }
        .navigationTitle("H4XOR NEWS")
        }
    }
}

#Preview {
    ContentView()
}
