//
//  Constant.swift
//  CallingLibrary
//
//  Created by V Group Inc on 01/12/23.
//

import Foundation
public class Constant{
    public static var bundle: Bundle {
        let podBundle = Bundle(for: self)
        
        // Adjust the bundle name based on your project structure
        if let bundleURL = podBundle.url(forResource: "CallingLibrary", withExtension: "bundle") {
            return Bundle(url: bundleURL)!
        } else {
            return podBundle
        }
    }
    
    public static func getImage(named: String) -> UIImage? {
        return UIImage(named: named, in: bundle, compatibleWith: nil)
    }
    
}
