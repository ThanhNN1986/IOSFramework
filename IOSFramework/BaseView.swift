//
//  BaseView.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

protocol NetworkDelegate {
    func receiveDataFromModel (modelEvent: BaseModelEvent)
    func receiveErrorFromModel (modelEvent: BaseModelEvent)
}

class BaseView: UIViewController {

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

}

extension BaseView: NetworkDelegate {
    func receiveDataFromModel(modelEvent: BaseModelEvent) {
        
    }
    
    func receiveErrorFromModel(modelEvent: BaseModelEvent) {
        
    }
}
