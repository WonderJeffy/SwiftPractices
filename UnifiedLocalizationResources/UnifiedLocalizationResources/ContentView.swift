///
//  @filename   ContentView.swift
//  @package   UnifiedLocalizationResources
//  
//  @author     jeffy
//  @date       2022/12/14 
//  @abstract   
//
//  Copyright (c) 2022 and Confidential to jeffy All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
