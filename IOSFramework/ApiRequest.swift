//
//  ApiRequest.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/25/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import Alamofire
import Foundation

class ApiRequest: URLRequestConvertible {
    let method:String
    let path:String
    let params:[String: AnyObject]?
    
    init(method: String, path: String) {
        self.method = method
        self.path   = path
        self.params = nil
    }
    
    init(method: String, path: String, params: [String: AnyObject]?) {
        self.method = method
        self.path   = path
        self.params = params
    }
    
    var headers: [String : String] {
        var headers:[String : String] = [:]
        headers["Time-Zone"] = NSTimeZone.localTimeZone().name
//        if let language = NSBundle.mainBundle().preferredLocalizations.first as String! {
//            headers["Accept-Language"] = language[0...1]
//        }
//        if let api_token  = User.currentUser?.api_token {
//            headers["Api-Token"] = api_token
//        }
        return headers
    }
    
    var url: String {
        return HTTP_URL
    }
    
    var URLRequest: NSMutableURLRequest {
//        let url = NSURL(
//            scheme: Config.sharedInstance.apiSchema,
//            host: Config.sharedInstance.apiDomain,
//            path: path
//            )!
        let url = NSURL(string: "https://httpbin.org/get")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = method
        request.allHTTPHeaderFields?.updateValue(NSTimeZone.localTimeZone().name, forKey: "Time-Zone")
//        if let language = NSBundle.mainBundle().preferredLocalizations.first {
//            request.allHTTPHeaderFields?.updateValue(language[0...1], forKey: "Accept-Language")
//        }
//        if let apiToken  = User.currentUser?.api_token {
//            request.allHTTPHeaderFields?.updateValue(apiToken, forKey: "Api-Token")
//        }
        return Alamofire.ParameterEncoding.URL.encode(request, parameters: params).0
    }
}
