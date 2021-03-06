//
//  RossController.swift
//  FriendsDating
//
//  Created by Hannah Lim on 16-09-15.
//  Copyright (c) 2015 Hannah Lim. All rights reserved.
//

import UIKit

class RossController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonRossYes(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        var friends = defaults.dictionaryForKey("friends") as! Dictionary<String, String>
        friends["Ross"] = "Yes"
        defaults.setObject(friends, forKey: "friends")
    }
    
    @IBAction func buttonRossNo(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        var friends = defaults.dictionaryForKey("friends") as! Dictionary<String, String>
        friends["Ross"] = "No"
        defaults.setObject(friends, forKey: "friends")
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

