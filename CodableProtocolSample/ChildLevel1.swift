//
//  ChildLevel1.swift
//  CodableProtocolSample
//
//  Created by Marcelo Sampaio on 31/07/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import Foundation

class ChildLevel1 : Codable {
    var name = String()
    var profile = String()
    
    init() {
        self.name = String()
        self.profile = String()
    }
    
}
