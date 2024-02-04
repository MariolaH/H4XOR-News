//
//  WebView.swift
//  H4XOR News
//
//  Created by Mariola Hullings on 2/3/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    //When make UIView, it's going to try and create a UIKit WebView and turn it into a SwiftUI WebView.
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
