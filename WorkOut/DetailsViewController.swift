//
//  DetailsViewController.swift
//  WorkOut
//
//  Created by Md Zahidul Islam Mazumder on 17/11/18.
//  Copyright © 2018 Md Zahidul islam. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionnValue: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = detailsArray[0].uppercased()
        let img = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        img.image = workoutImage
        
        let description = view.viewWithTag(7) as! UITextView
        description.text = detailsArray[1] 
        
        
        
    }
    
    @IBAction func dissmiss(_ sender: Any) {
//        performSegue(withIdentifier: "coreWorkout", sender: self)
        //dissmiss(sender)
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var imgView: UIImageView!
    @IBAction func close (segue: UIStoryboardSegue){
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
