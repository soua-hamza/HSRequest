//
//  HSRequestError.swift
//  HSRequest
//
//  Created by Nibrasse FOUDA on 5/16/18.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation
public struct HSRequestError {
    
    public let  timestamp : String
    public let  status : Int
    public let  error : String
    public let  message : String
    public let  path : String
    
    init(timestamp : String,status : Int,error : String,message : String,path : String) {
        
        self.timestamp = timestamp
        self.status = status
        self.error = error
        self.message = message
        self.path = path
        
    }
    
}
