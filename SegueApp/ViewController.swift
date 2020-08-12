//
//  ViewController.swift
//  SegueApp
//
//  Created by Bahriye Begum Ultan Gungor on 12.08.2020.
//  Copyright © 2020 Bahriye Begum Ultan Gungor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userName = " "
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    
    // --------- Lifecycle ---------
    // 1- kullanıcı ekranı görmeden, yüklendiği gibi
    // second VC'den geri dönünce bir daha çalışmaz.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
        nameText.text = " "
        nameText.placeholder = "Name"
    }
    
    // 2- kullanıcı görmek üzere
    override func viewWillAppear(_ animated: Bool) {
        nameText.text = " "
        nameText.placeholder = "Name"
        print("viewWillAppear function called")
    }
    
    // 3- kullanıcı gördü
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    // 4- kullanıcı heran başka ekrana gidebilir
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    // yeni ekrana geçerken çalışır
    // 5- kullanıcı başka ekrana gitti
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    // --------- Lifecycle ---------


    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    // segue olmadan önce çalışacak
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            // casting : as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}








