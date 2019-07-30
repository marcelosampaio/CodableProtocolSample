//
//  DataObject.swift
//  CodableProtocolSample
//
//  Created by Marcelo Sampaio on 30/07/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import Foundation


class DataObject : Codable {
    
    var accessCode = String()
    var name = String()
    
    init() {
        self.accessCode = String()
        self.name = String()
    }
    
}
