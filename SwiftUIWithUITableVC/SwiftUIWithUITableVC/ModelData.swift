//
//  ModelData.swift
//  SwiftUIWithUITableVC
//
//  Created by 정성훈 on 2021/09/29.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    var users = [
        User(name: "Jeong", gender: "Male"),
        User(name: "Seong", gender: "Male"),
        User(name: "Hoon", gender: "Male"),
        User(name: "Anhgg", gender: "Male"),
        User(name: "wow", gender: "Male")
    ]
}

struct User {
    var name: String
    var gender: String
}
