//
//  SettingsViewController.swift
//  pokemonCards
//
//  Created by user174585 on 7/1/20.
//  Copyright © 2020 Mark Paddy 111876646. All rights reserved.
//

import UIKit
var type = true
var strength = false
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    @IBAction func typeSort(_ sender: Any) {
            type = true
        strength = false
    }
    
    @IBAction func strengthSort(_ sender: Any) {
       strength = true
        type = false
    }
}
