//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 정성훈 on 2021/09/17.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
