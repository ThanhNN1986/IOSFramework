//
//  ApiResponse.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/25/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import Foundation

import Alamofire

class ApiResponse {
    var result: AnyObject?
    var headers: [NSObject : AnyObject]
    
    init(result: AnyObject?, headers: [NSObject : AnyObject]) {
        self.result = result
        self.headers = headers
    }
}
