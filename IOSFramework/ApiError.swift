//
//  ApiError.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/25/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import Alamofire

class ApiError:NSError {
    var statusCode: Int
    var error: NSError
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(statusCode: Int, error: NSError) {
        self.statusCode = statusCode
        self.error      = error
        super.init(domain: error.domain, code: error.code, userInfo: error.userInfo)
    }
}