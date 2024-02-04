//
//  DetailView.swift
//  H4XOR News
//
//  Created by Mariola Hullings on 2/2/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
