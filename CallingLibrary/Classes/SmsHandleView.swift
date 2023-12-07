//
//  SmsHandleView.swift
//  CallingLibrary
//
//  Created by V Group Inc on 01/12/23.
//

import Foundation
open class SmsHandleView:SmsViewController{

    open class func onPresent(
        on viewController:UIViewController,
        configuration: (SmsViewController) -> Void = {_ in }){
        let controller = SmsViewController()
        configuration(controller)
        let navigationController = UINavigationController(rootViewController: controller)
        viewController.present(navigationController, animated: true, completion: nil)
    }

}


