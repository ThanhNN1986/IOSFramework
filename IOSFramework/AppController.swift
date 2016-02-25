//
//  AppController.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/25/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

public class AppController: NSObject {
    
    public static func getInstance() -> AppController {
        let instance = AppController()
        return instance
    }
    
    func changeView (actionEvent: BaseActionEvent) {
        
    }
    
    func handleModel (actionEvent: BaseActionEvent) {
        switch actionEvent.action {
        case ActionEvent.login:
            break
        default:
            break
        }
        AppService.getInstance().handelReceiveRequestFromController(actionEvent)
    }
    
    func handleReceiveDataFromModel (modelEvent: BaseModelEvent) {
        
    }

}


