//
//  ApiManager.swift
//  Learn-iOS
//
//  Created by Mac on 5/3/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManager {
    
    static func getInstance() -> ApiManager {
        return ApiManager()
    }
    
    func getUsers(completion: @escaping ([User]?) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var users = [User]()
        AF.request(urlRequest).validate().responseJSON {
            response in
            guard let jsonArray = response.value as? [[String: Any]] else {
                return
            }
            
            for userDetail in jsonArray {
                if let id = userDetail["id"] as? Int, let name = userDetail["name"] as? String {
                    users.append(User(id: String(describing: id), name: name))
                }
            }
            completion(users)
        }
        
    }
}
