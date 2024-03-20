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

    @IBOutlet weak var customView:CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = Bundle.main.bundleIdentifier
        print("bundle___________",bundle ?? "")
       // self.DoneKeyboard(dismissOnTap: true)
        C2CSdkshowAlert(title: "123", message: "1234", view: self)
       // C2CSdkBaseViewController().setUPView(leading: customView.leadingAnchor , trailding: customView.trailingAnchor, height: 100, width: 200, channel_id: "657b0f55632f4ca91909ce0e")
        //channel_Modes_API_Callings(channel_id: "657b0f55632f4ca91909ce0e")
        
        //C2CSdkMainViewController().setUPView(leading: customView.leftAnchor, trailding: customView.trailingAnchor, height: 40, width: 100, channel_id: "657b0f55632f4ca91909ce0e")
        customView.height = 40
        //customView.width = 160
        customView.channel_id = "657b0f55632f4ca91909ce0e"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController{
    @IBAction func actionOnSmsBtn(_ sender:UIButton){
        print("actionOnSmsBtn")
//        SmsHandleView.onPresent(on: self){_ in
//            print("actionOnSmsBtn 22")
//        }
    }
    
    @IBAction func actionOnCallBtn(_ sender:UIButton){
        print("actionOnCallBtn")
//        CallHandleView.onNaviagtionCallView(on: self){_ in
//            print("actionOnCallBtn 11")
//        }
    }
    @IBAction func actionOnEmailBtn(_ sender:UIButton){
        print("actionOnEmailBtn")
//        SmsValidationModel.onPresent(on: self){_ in
//            print("actionOnCallBtn 11")
//        }
    }
}
