//
//  UserAdapter.swift
//  Learn-iOS
//
//  Created by Mac on 5/3/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

class UserAdapter {
    static func getUsers() -> [User] {
        return [
            User(id: "1", name: "John Doe"),
            User(id: "2", name: "Martin Jones")
        ]
    }
}
