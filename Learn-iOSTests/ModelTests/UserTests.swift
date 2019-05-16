//
//  UserTests.swift
//  Learn-iOSTests
//
//  Created by Mac on 5/16/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import XCTest
@testable
import Learn_iOS

class UserTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIfUserIsCreatedFromDictionary() {
        
        let id = 12;
        let name = "John Doe"
        let email = "jdoe@example.com"
        
        let response = [
            "id": id,
            "name": name,
            "email": email,
            ] as [String : Any]
        
        let user = User.fromJSON(response)
        
        XCTAssert(user.id == String(describing: id))
        XCTAssert(user.name == name)
        
    }

}
