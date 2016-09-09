//
//  ViewController.swift
//  MyTestProject
//
//  Created by 林兴栋 on 16/9/6.
//  Copyright © 2016年 林兴栋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func clickTheTestBtn(sender: UIButton) {
        print("只是测试")
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("TestViewController")
        
        self.presentViewController(vc, animated: true, completion: ({
                print("还真走了呀")
            }))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

