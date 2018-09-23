//
//  HSRequestDelegate.swift
//  HSRequest
//
//  Created by SOUA Hamza on 13/05/2018.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation


public protocol HSRequestDelegate {
    func HSRequestDidSucceed(code: Int,message:String,response: Any)
    func HSRequestDidFail(error : NSError)
}
