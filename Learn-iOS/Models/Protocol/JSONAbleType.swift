//
//  JSONAbleType.swift
//  Learn-iOS
//
//  Created by Mac on 5/16/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation

protocol JSONAbleType {
    static func fromJSON(_: [String: Any]) -> Self
}
