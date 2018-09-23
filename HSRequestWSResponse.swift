//
//  HSRequestResponse.swift
//  HSRequest
//
//  Created by SOUA Hamza on 16/05/2018.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation
public struct HSRequestWSResponse : HSDataModel {
    
    let code : Int
    let error : Bool
    let msg : String
    let response : Any

    init(code : Int, error : Bool, message : String, response : Bool) {
        self.code = code
        self.error = error
        self.msg = message
        self.response = response
    }
    
    public init(dictionnary: [String : Any]) {
        self.code = dictionnary["code"]! as! Int
        self.error = dictionnary["error"]! as! Bool
        self.msg = dictionnary["msg"]! as! String
        self.response = dictionnary["response"]!
    }
    
    public func AsDictionnary() -> [String : Any] {
        return ["code" : code, "error" : error, "msg" : msg, "response" : response]
    }

}
