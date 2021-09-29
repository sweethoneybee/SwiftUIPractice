//
//  ContentView.swift
//  SwiftUIWithUITableVC
//
//  Created by 정성훈 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("chunsik")
                    .resizable()
                    .scaledToFit()
                    
                
                Text("밑에 리스트는 UITableViewController예요!")
                    .font(.headline)
                
                UserListView()
                    .navigationTitle("이야 대단해")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
