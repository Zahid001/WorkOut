//
//  CustomButton.swift
//  WorkOut
//
//  Created by Md Zahidul Islam Mazumder on 16/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = UIColor(red:0.78, green:0.33, blue:0.28, alpha:1.0)
        self.setTitleColor(UIColor.white, for: UIControl.State.normal)
        self.titleLabel?.font = UIFont(name: "Baskerville-SemiBoldItalic", size: 22)
        self.layer.cornerRadius = 14
        self.clipsToBounds = true
        
    }

}
