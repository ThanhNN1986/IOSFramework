//
//  AppService.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit
import Alamofire
import Bolts

public class AppService: NSObject {
    
    public static func getInstance() -> AppService {
        let instance = AppService()
        return instance
    }
    
    //fun login
    func login(actionEvent: BaseActionEvent) {
//        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
//            .responseJSON { response in
//                print(response.request)  // original URL request
//                print(response.response) // URL response
//                print(response.data)     // server data
//                print(response.result)   // result of response serialization
//                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//        }
        
        let request = ApiRequest(method: "GET", path: "https://httpbin.org/get", params: ["foo": "bar"])
        ApiClient.callInBackground(request).continueWithSuccessBlock({ (task: BFTask!) -> AnyObject! in
            let response = task.result as! ApiResponse
            print("response: ", response)
            return nil 
        }).continueWithBlock { (task: BFTask!) -> AnyObject! in
            if task.faulted {
                return nil
            }
            return nil
        }
    }
    
    func handelReceiveRequestFromController (actionEvent: BaseActionEvent) {
        switch actionEvent.action {
        case .login:
            login(actionEvent)
        default:
            break
        }
        
    }
    
    func receiveDataFromRequest() {
        
    }
    
    func receiveErrorFromRequest() {
        
    }
}
