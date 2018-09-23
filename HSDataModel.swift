//
//  HSDataModel.swift
//  HSRequest
//
//  Created by SOUA Hamza on 13/05/2018.
//  Copyright © 2018 SOUA Hamza. All rights reserved.
//

import Foundation

public protocol HSDataModel {
    init(dictionnary : [String : Any])
    func AsDictionnary() -> [String : Any]
}
