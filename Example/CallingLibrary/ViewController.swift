//
//  ViewController.swift
//  CallingLibrary
//
//  Created by Satyam Kumar on 11/28/2023.
//  Copyright (c) 2023 Satyam Kumar. All rights reserved.
//

import UIKit
import CallingLibrary
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let log = CallingPage()
        log.printMethod()
        self.DoneKeyboard(dismissOnTap: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController{
    @IBAction func actionOnCallBtn(_ sender:UIButton){
        print("actionOnCallBtn")
    }
    
    @IBAction func actionOnSmsBtn(_ sender:UIButton){
        print("actionOnSmsBtn")
        SmsHandleView.onPresent(on: self){_ in
            print("actionOnSmsBtn 22")
        }
    }
    @IBAction func actionOnEmailBtn(_ sender:UIButton){
        print("actionOnEmailBtn")
    }
}

