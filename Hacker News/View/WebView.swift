//
//  WebView.swift
//  Hacker News
//
//  Created by Prosper Evergreen on 11.10.2020.
//

import Foundation
import WebKit
import SwiftUI // for context and UIRepresentable

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView{
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURLString = urlString{
            if let url = URL(string: safeURLString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
