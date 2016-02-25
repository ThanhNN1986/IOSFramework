//
//  BaseActionEvent.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

enum ActionEvent {
    case login
    case register
}

class BaseActionEvent: NSObject {
    var action: ActionEvent
    var sender: NetworkDelegate?
    var viewData: NSObject?
    var tag: Int
    
    override init() {
        action = ActionEvent.login
        sender = nil
        viewData = nil
        tag = 0
    }
}
