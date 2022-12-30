///
//  @filename   SwiftUIChartDemoApp.swift
//  @package   SwiftUIChartDemo
//  
//  @author     jeffy
//  @date       2022/12/14 
//  @abstract   
//
//  Copyright (c) 2022 and Confidential to jeffy All rights reserved.
//

import SwiftUI

@main
struct SwiftUIChartDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
