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
                users.append(User.fromJSON(userDetail))
            }
            completion(users)
        }
        
    }
    
    func getPosts(userId: String, completion: @escaping ([Post]?) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts?userId=\(userId)") else {
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        var posts = [Post]()
        AF.request(urlRequest).validate().responseJSON {
            response in
            
            guard let jsonArray = response.value as? [[String: Any]] else {
                return
            }
            
            for post in jsonArray {
                if let id = post["id"] as? Int, let userId = post["userId"] as? Int, let title = post["title"] as? String, let body = post["body"] as? String {
                    posts.append(Post(userId: String(describing: userId), id: String(describing: id), title: title, body: body))
                }
            }
            completion(posts)
        }
        
    }
}
