//
//  HSRequest.swift
//  HSRequest
//
//  Created by SOUA Hamza on 13/05/2018.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation
import Alamofire

open class HSRequest : NSObject {
    
    public override init() {
        super.init()
    }
    
    public func executeRequest(requestConfig : HSRequestConfig) {
        Alamofire.request(requestConfig.url, method: requestConfig.method , parameters:requestConfig.requestModel?.AsDictionnary(),encoding: JSONEncoding.default).validate().responseJSON{(response) in
            switch response.result {
            case .success:
                //HTTP Request success
                let responseData = try! JSONSerialization.jsonObject(with: response.data!, options: []) as! [String:Any]
                let WSResponse = HSRequestWSResponse(dictionnary: responseData)
                if !WSResponse.error {
                    requestConfig.delegate.HSRequestDidSucceed(code: WSResponse.code, message: WSResponse.msg, response: WSResponse.response)
                } else {
                    assertionFailure("WS return error == true, this case is not handled in else statement ")
                }
            case .failure(let error):
                //HTTP Request Failure
                let afError : AFError? = error as? AFError
                var nsError = NSError()
                if let error = afError {
                    nsError = NSError(domain:"Domain=NSError" , code: error.responseCode!, userInfo:["errorDescription":error.errorDescription ?? ""])
                } else {
                    nsError = error as NSError
                }
                requestConfig.delegate.HSRequestDidFail(error: nsError)
            }
        }
    }
}
