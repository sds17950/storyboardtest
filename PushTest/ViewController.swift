//
//  ViewController.swift
//  PushTest
//
//  Created by MF839-001 on 2016. 5. 18..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var switchVal:Bool = false

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func unwindToViewController(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func onSwitch(sender: AnyObject) {
        let updateSwitch = sender as! UISwitch
        
        if updateSwitch.on == true {
            switchVal = true
        } else {
            switchVal = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(method(_:)), name: "HELLO", object: nil)
    }
    
    func method(notification:NSNotification) {
        self.view.backgroundColor = UIColor.redColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let svc = segue.destinationViewController as? SecondViewController {
            svc.textFieldVal = myTextField.text!
            svc.switchVal = switchVal
        }
    }

}

