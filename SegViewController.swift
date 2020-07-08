//
//  SegViewController.swift
//  pokemonCards
//
//  Created by user174585 on 7/1/20.
//  Copyright © 2020 Mark Paddy 111876646. All rights reserved.
//

import UIKit

class SegViewController: UIViewController {
 
 
  
    @IBOutlet weak var nameSeg: UITextField!
    @IBOutlet weak var typeSeg: UITextField!
    @IBOutlet weak var npnSeg: UITextField!
    @IBOutlet weak var genSeg: UITextField!
    @IBOutlet weak var strenSeg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSeg.text = recievedName
        typeSeg.text = recievedType
        npnSeg.text = recievedNPN
        genSeg.text = recievedGen
        strenSeg.text = recievedStren
        // Do any additional setup after loading the view.
    }
      var recievedName = ""
    var recievedType = ""
    var recievedNPN = ""
    var recievedGen = ""
    var recievedStren=""
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
