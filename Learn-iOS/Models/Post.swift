//
//  Post.swift
//  Learn-iOS
//
//  Created by Mac on 5/8/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

struct Post: Codable {
    var userId: String
    var id: String
    var title: String
    var body: String
    
    init(userId: String, id: String, title: String, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
}
