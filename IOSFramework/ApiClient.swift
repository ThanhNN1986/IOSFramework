//
//  ApiClient.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/25/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import Alamofire
import Bolts

class ApiClient {
    
    class func callInBackground(request: ApiRequest) -> BFTask {
        let taskSource = BFTaskCompletionSource()
        Alamofire.request(request).responseJSON { (response: Response<AnyObject, NSError>) -> Void in
            if let statusCode = response.response?.statusCode where statusCode == 200 {
                //
                // Success
                //
                if let value = response.result.value {
                    print("value :", value)
                    taskSource.setResult(ApiResponse(result: value, headers: response.response!.allHeaderFields))
                } else {
                    taskSource.setResult(ApiResponse(result: nil, headers: response.response!.allHeaderFields))
                }
            } else if let statusCode = response.response?.statusCode, let error = response.result.error {
                //
                // Sever Error
                //
                taskSource.setError(ApiError(statusCode: statusCode, error: error))
            } else {
                //
                // Unknown Error
                //
                taskSource.setError(ApiError(statusCode: 0, error: NSError(domain: "", code: 0, userInfo: nil)))
            }
        }
        return taskSource.task
    }
    
}
