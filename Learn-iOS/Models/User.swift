//
//  User.swift
//  Learn-iOS
//
//  Created by Mac on 5/3/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User: Codable {
    var id: String
    var name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

extension User: JSONAbleType {
    
    static func fromJSON(_ json: [String : Any]) -> User {
        //let json = JSON(json).dictionaryValue;
        
        if let id = json["id"] as? Int, let name = json["name"] as? String {
            return User(id: String(describing: id), name: name)
        }
        return User(id: "", name: "")
    }
    
}
