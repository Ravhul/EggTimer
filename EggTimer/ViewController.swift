//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var softTime = 8;
    var medium = 12
    var hard = 16;

    @IBAction func eggBtnClk(_ sender: UIButton) {
        let btnType = sender.currentTitle;
        var eggTime : Int;
        
        if btnType! == "Soft" {
            eggTime = softTime;
        }else if(btnType! == "Medium"){
            eggTime = medium;
        }
        else{
            eggTime = hard;
        }
        
        print("\(btnType!) will cook in \(eggTime) min.");
    }
    
   
}
