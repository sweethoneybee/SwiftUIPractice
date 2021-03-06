//
//  SwiftUIWithUITableVCApp.swift
//  SwiftUIWithUITableVC
//
//  Created by 정성훈 on 2021/09/29.
//

import SwiftUI

@main
struct SwiftUIWithUITableVCApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
