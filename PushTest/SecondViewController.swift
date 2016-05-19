//
//  SecondViewController.swift
//  PushTest
//
//  Created by MF839-001 on 2016. 5. 19..
//  Copyright © 2016년 SDS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var switchVal:Bool = false
    var textFieldVal:String = ""

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBAction func nextViewController(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("thirdview") {
            self.navigationController?.pushViewController(svc, animated: true)
            
            let tvc = svc as! ThirdViewController
            tvc.textVal = "TEST"
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        print("viewDidDisappear")
        
    }
    
    @IBAction func nextWithSegue(sender: AnyObject) {
        performSegueWithIdentifier("etcsegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstLabel.text = textFieldVal;
        
        if switchVal == true {
            secondLabel.text = "True"
        } else {
            secondLabel.text = "Fasle"
        }
        print("viewDidLoad")
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
