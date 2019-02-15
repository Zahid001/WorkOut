//
//  WorkOutViewController.swift
//  WorkOut
//
//  Created by Md Zahidul Islam Mazumder on 15/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit
var detailsArray = [String]()
class WorkOutViewController: UIViewController {

    var workoutDict = [String:[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Choose Workout"
        
        if let path = Bundle.main.path(forResource: "WorkOuts", ofType: "plist"){
            if let dictionaryValue = NSDictionary(contentsOfFile:  path){
                print(dictionaryValue)
                workoutDict = dictionaryValue as! [String : [String]]
                let titleArray = dictionaryValue.allKeys
                
                let subView = view.subviews
                
                for i in  0..<subView.count
                {
                    if subView[i].tag == 10 //is UIButton
                    {
                        let button = subView[i] as! UIButton
                        button.setTitle(titleArray[i] as? String, for: .normal)
                        //button.backgroundColor = UIColor(red:0.78, green:0.33, blue:0.28, alpha:1.0)
                        
                        button.addTarget(self, action: #selector(WorkOutViewController.goDetails(sender:)), for: .touchUpInside)
                        
                        button.setTitleColor(UIColor(red:0.78, green:0.33, blue:0.28, alpha:1.0), for: UIControl.State.normal)
                        button.titleLabel?.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22)
                        button.layer.cornerRadius = 14
                        button.layer.borderColor = UIColor(red:0.78, green:0.33, blue:0.28, alpha:1.0).cgColor
                        button.layer.borderWidth = 3.8
                        button.clipsToBounds = true
                    }
                    
                }
            }
            
            
        }
        
        
        
        
        
        
        
      /*  if let path = Bundle.main.path(forResource: "WorkOuts", ofType: "plist"){
            if let dictionaryValue = NSDictionary(contentsOfFile:  path){
                print(dictionaryValue)
            }
            
            
        }   */
       
        
    }
    @objc func goDetails(sender:UIButton){
        
        if let title = sender.titleLabel?.text, let screenDetails = workoutDict[title]{
            detailsArray = screenDetails
            performSegue(withIdentifier: "details", sender: self)
        }
    }

    
}
