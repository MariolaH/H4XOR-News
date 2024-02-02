//
//  PostData.swift
//  H4XOR News
//
//  Created by Mariola Hullings on 2/1/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

//Identifiable always has an id property
//need identifiable protocol in order to use that structure (post in Text(post.title) inside the list, and for the to know how to order each item.
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
