///
//  @filename   MetalView.swift
//  @package   SwiftUIMetalDemo
//  
//  @author     jeffy
//  @date       2023/1/8 
//  @abstract   
//
//  Copyright (c) 2023 and Confidential to jeffy All rights reserved.
//

import SwiftUI
import MetalKit

/// MTKView 继承自 UIView 或 NSView(MacOS), 在 SwiftUI 中需要使用 UIViewRepresentable 或 NSViewRepresentable(MacOS) 包装才能使用
struct MetalView: View {
    @State private var metalView = MTKView()
    @State private var renderer: Renderer?
    
    var body: some View {
        MetalViewRepresentable(metalView: $metalView)
            .onAppear { renderer = Renderer(metalView: metalView) }
    }
}

struct MetalViewRepresentable: UIViewRepresentable {
    @Binding var metalView: MTKView
    
    func makeUIView(context: Context) -> MTKView {
        metalView
    }
    
    func updateUIView(_ uiView: MTKView, context: Context) {
        updateMetalView()
    }
    
    func updateMetalView() {
        
    }
}

struct MetalView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            MetalView()
            Text("Metal View")
        }
    }
}

