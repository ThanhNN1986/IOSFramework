//
//  BaseModelEvent.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

class BaseModelEvent: NSObject {
    
    var actionEvent: BaseActionEvent?
    var modelData: NSObject?
    var messageError: String?
    var errorCode: Int
    
    override init() {
        actionEvent = nil
        modelData = nil
        messageError = ""
        errorCode = -1
    }
}
