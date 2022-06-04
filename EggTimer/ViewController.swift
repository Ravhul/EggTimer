//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var softTime = 1;
    var medium = 12
    var hard = 16;
    
    var minRmn = 1;
    var sec = 60;
    var ttlTme = 1;
    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var prgressBar: UIProgressView!
    var btnType:String? = nil;
    var timer = Timer();
    
    @IBAction func eggBtnClk(_ sender: UIButton) {
        btnType = sender.currentTitle;
        timer.invalidate();
        
        if btnType! == "Soft" {
            minRmn = softTime;
        }else if(btnType! == "Medium"){
            minRmn = medium;
        }
        else{
            minRmn = hard;
        }
        ttlTme = minRmn*sec;
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil,repeats: true);
    }
    
    @objc func updateTimer(){
        if minRmn > 0{
            let perProg : Float = Float(61 - sec) / Float(ttlTme);
            print("\(perProg)");
            prgressBar.progress = perProg;
            titleText.text = "\(btnType!) Egg will cook in \(minRmn-1) : \(sec)";
        }else{
            titleText.text = "\(btnType!) Egg Cooked!";
            timer.invalidate();
        }
        sec-=1;
        
        if sec <= 0{
            minRmn-=1;
            sec = 60;
        }
    }
    
   
}
