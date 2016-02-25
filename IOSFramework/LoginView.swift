//
//  LoginView.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

class LoginView: BaseView {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: Network Receive
    override func receiveDataFromModel(modelEvent: BaseModelEvent) {
        
    }
    
    override func receiveErrorFromModel(modelEvent: BaseModelEvent) {
        
    }

}
