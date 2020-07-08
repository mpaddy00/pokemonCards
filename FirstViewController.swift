//
//  FirstViewController.swift
//  pokemonCards
//
//  Created by user174585 on 7/1/20.
//  Copyright © 2020 Mark Paddy 111876646. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var NPN: UITextField!
    @IBOutlet weak var generation: UITextField!
    @IBOutlet weak var Strength: UITextField!
    @IBAction func deleteAll(_ sender: Any) {
        arr.removeAll()
        arr2.removeAll()
        arr3.removeAll()
        arr4.removeAll()
        arr5.removeAll()
    }
    
    var arr = [String]()
    var arr2 = [String]()
    var arr3 = [Int]()
    var arr4 = [String]()
    var arr5 = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func save(_ sender: Any) {
        arr.append(name.text!)
              let defaults = UserDefaults.standard
              defaults.set(arr, forKey: "SavedStringArray")
        
        arr2.append(type.text!)
        defaults.set(arr2, forKey: "SavedTypeArray")
          view.endEditing(true)
        let iCon:Int? = Int(NPN.text!)
        arr3.append(iCon!)
               defaults.set(arr3, forKey: "SavedNpnArray")
        arr4.append(generation.text!)
        defaults.set(arr4, forKey:"SavedGenArray")
        let aCon:Int? = Int(Strength.text!)
        arr5.append(aCon!)
        defaults.set(arr5, forKey:"SavedStrengthArray")
                 view.endEditing(true)
    }
    
    
}

