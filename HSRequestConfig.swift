//
//  HSRequestConfig.swift
//  HSRequest
//
//  Created by SOUA Hamza on 13/05/2018.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation
import Alamofire

public protocol HSRequestConfig {
    
    var method : HTTPMethod {get}
    var url : URL {get}
    var delegate : HSRequestDelegate {get set}
    var requestModel : HSRequestModel? {get set}
    
    init(delegate : HSRequestDelegate , requestModel : HSRequestModel?)
    
}
