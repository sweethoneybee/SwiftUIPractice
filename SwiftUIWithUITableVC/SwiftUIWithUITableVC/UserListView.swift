//
//  UserListView.swift
//  SwiftUIWithUITableVC
//
//  Created by 정성훈 on 2021/09/29.
//

import SwiftUI

struct UserListView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        TableViewController(users: modelData.users)
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
            .environmentObject(ModelData())
    }
}
