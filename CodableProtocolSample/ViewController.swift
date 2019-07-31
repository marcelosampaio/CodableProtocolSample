//
//  ViewController.swift
//  CodableProtocolSample
//
//  Created by Marcelo Sampaio on 30/07/19.
//  Copyright © 2019 Marcelo Sampaio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - UI Actions
    @IBAction func storeAction(_ sender: Any) {
        print("👉 begin store action")
        
        // -----------------------------------------
        let level = ChildLevel1()
        level.name = "levelName"
        level.profile = "LV1"
        
        let dataObject = DataObject()
        dataObject.accessCode = "XR3"
        dataObject.name = "WebLaudos Profile"
        dataObject.levels.append(level)
        
        
        // -----------------------------------------

        
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(dataObject) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "dataObjectKey")
        }
        
        print("🖐 end store action")
    }
    
    @IBAction func retrieveAction(_ sender: Any) {
        print("👉 begin retirve action")
        let defaults = UserDefaults.standard
        if let savedObject = defaults.object(forKey: "dataObjectKey") as? Data {
            let decoder = JSONDecoder()
            if let mySavedObject = try? decoder.decode(DataObject.self, from: savedObject) {
                print(" this is the saved object: \(mySavedObject.name)")
            }
        }
        print("🖐 end retireve action")
    }
    


}

