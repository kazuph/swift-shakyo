//
//  ViewController.swift
//  testApp
//
//  Created by kazuph_org on 2015/01/10.
//  Copyright (c) 2015年 kazuph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "こんにちは、世界！";
        myLabel2.text = "\(NSDate())";
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func pushMyButton(sender: AnyObject) {
        var myAlert = UIAlertController(title: "たいとる", message: "めっさげ", preferredStyle: .Alert)
        let OKAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        myAlert.addAction(OKAction)
        presentViewController(myAlert, animated: true, completion: nil)
    }
}

