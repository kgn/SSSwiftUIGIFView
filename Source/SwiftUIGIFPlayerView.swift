//
//  SwiftUIView.swift
//  SSSwiftUIGIFView
//
//  Created by Vatsal Tanna on 07/01/20.
//

import SwiftUI

public struct SwiftUIGIFPlayerView: UIViewRepresentable {
    
    private var gifName: String?
    private var gifURL: URL?
    
    public init(gifName: String) {
        self.gifName = gifName
    }
    
    public init(gifURL: URL) {
        self.gifURL = gifURL
    }
    
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SwiftUIGIFPlayerView>) {
        
    }
    
    public func makeUIView(context: Context) -> UIView {
        if let gifURL = gifURL {
            return GIFPlayerView(gifURL: gifURL)
        }
        return GIFPlayerView(gifName: gifName!)
    }
    
}
