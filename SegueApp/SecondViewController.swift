//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Bahriye Begum Ultan Gungor on 12.08.2020.
//  Copyright © 2020 Bahriye Begum Ultan Gungor. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var myName = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
        // Do any additional setup after loading the view.
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
