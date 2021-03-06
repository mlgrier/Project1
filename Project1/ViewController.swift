//
//  ViewController.swift
//  Project1
//
//  Created by Marco Grier on 9/20/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
           
        }
        print(pictures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

