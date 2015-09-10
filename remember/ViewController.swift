//
//  ViewController.swift
//  remember
//
//  Created by yf on 15/9/9.
//  Copyright (c) 2015年 yf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let date = NSDate(timeIntervalSinceNow: 5)
        let localNotification = UILocalNotification()
        localNotification.fireDate = date
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        localNotification.alertBody = "I am a local notification!"
        localNotification.hasAction = true
        localNotification.alertAction = "可以继续调戏"
        localNotification.soundName = UILocalNotificationDefaultSoundName
        localNotification.applicationIconBadgeNumber = 1990
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

