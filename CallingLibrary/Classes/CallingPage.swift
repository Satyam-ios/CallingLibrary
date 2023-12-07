//
//  CallingPage.swift
//  CallingLibrary
//
//  Created by V Group Inc on 30/11/23.
//

import Foundation
open class CallingPage{
    public init(){}
    public func printMethod(){
        print("Hello Satyam....")
    }
    private var image: UIImage?
    var imagePath: String?

    
    open var flag: UIImage? {
        if image != nil {
            return image
        }
        
        #if SWIFT_PACKAGE
            let bundle = Bundle.module
        #else
            let bundle = Bundle(for: CallingPage.self)
        #endif
        
        let flagImg = UIImage(named: imagePath ?? "", in: bundle, compatibleWith: nil)
        image = flagImg
        return image
    }
}
