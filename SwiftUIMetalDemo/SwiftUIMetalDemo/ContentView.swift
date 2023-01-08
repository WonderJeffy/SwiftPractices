///
//  @filename   ContentView.swift
//  @package   SwiftUIMetalDemo
//
//  @author     jeffy
//  @date       2023/1/8
//  @abstract
//
//  Copyright (c) 2023 and Confidential to jeffy All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MetalView()
                .border(Color.black, width: 2)
            Text("Hello, Metal!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
