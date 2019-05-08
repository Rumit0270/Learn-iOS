//
//  UserViewControllerTest.swift
//  Learn-iOSTests
//
//  Created by Mac on 5/8/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import XCTest

@testable
import Learn_iOS

class UserViewControllerTest: XCTestCase {
    
    var vc: UserViewController!
    
    override func setUp() {
        vc = UserViewController()
        _ = vc.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumberOfUsers() {
            print(vc.tableView.numberOfRows(inSection: 0) == 2)
    }
    
}
