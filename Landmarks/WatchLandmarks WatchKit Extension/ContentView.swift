//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by 정성훈 on 2021/10/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
