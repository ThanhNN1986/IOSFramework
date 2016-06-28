//
//  ViewController.swift
//  IOSFramework
//
//  Created by Thanh Nguyen on 2/24/16.
//  Copyright © 2016 Thanh Nguyen. All rights reserved.
//

import UIKit

class ViewController: BaseView {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myFirstLabel = UILabel()
        let myFirstButton = UIButton()
        myFirstLabel.text = "I made a label on the screen #toogood4you"
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45)
        myFirstLabel.textColor = UIColor.redColor()
        myFirstLabel.textAlignment = .Center
        myFirstLabel.numberOfLines = 5
        myFirstLabel.frame = CGRectMake(15, 54, 300, 500)
        myFirstButton.setTitle("✸", forState: .Normal)
        myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        myFirstButton.frame = CGRectMake(15, -50, 300, 500)
        myFirstButton.addTarget(self, action: #selector(ViewController.pressed(_:)), forControlEvents: .TouchUpInside)
//        myFirstButton.addTarget(self, action: "pressed", forControlEvents: .TouchUpInside)
        self.view.addSubview(myFirstLabel)
        self.view.addSubview(myFirstButton)
    }
    
    func pressed(sender: UIButton!) {
        print("Click button...")
        let actionEvent: BaseActionEvent = BaseActionEvent()
        actionEvent.sender = self
        actionEvent.action = ActionEvent.login
        actionEvent.viewData = "Login"
        AppController.getInstance().handleModel(actionEvent)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

