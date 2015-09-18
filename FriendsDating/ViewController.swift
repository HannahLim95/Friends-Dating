//
//  ViewController.swift
//  FriendsDating
//
//  Created by Hannah Lim on 16-09-15.
//  Copyright (c) 2015 Hannah Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelLikeJoey: UILabel!
    @IBOutlet weak var labelLikeChandler: UILabel!
    @IBOutlet weak var labelLikeMonica: UILabel!
    @IBOutlet weak var labelLikeRachel: UILabel!
    @IBOutlet weak var labelLikePhoebe: UILabel!
    @IBOutlet weak var labelLikeRoss: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        likes()
    }
    
    // We use the class ViewController, which is a daughter of UIViewController. We are able to use al the functions from UIViewController. To use a function from UIViewController and change it we have to override the function.
    override func viewWillAppear(animated: Bool) {
        likes()
    }

    func likes(){
        let defaults = NSUserDefaults.standardUserDefaults()
        var friends = defaults.dictionaryForKey("friends") as! Dictionary<String, String>
        
        // Chandler
        var chandlerLike = friends["Chandler"]
        labelLikeChandler.text = chandlerLike!
        
        // Monica
        var monicaLike = friends["Monica"]
        labelLikeMonica.text = monicaLike!
        
        // Rachel
        var rachelLike = friends["Rachel"]
        labelLikeRachel.text = rachelLike!
        
        // Joey
        var joeyLike = friends["Joey"]
        labelLikeJoey.text = joeyLike!
        
        // Phoebe
        var phoebeLike = friends["Phoebe"]
        labelLikePhoebe.text = phoebeLike!
        
        // Ross
        var rossLike = friends["Ross"]
        labelLikeRoss.text = rossLike
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}