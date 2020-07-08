//
//  SecondViewController.swift
//  pokemonCards
//
//  Created by user174585 on 7/1/20.
//  Copyright © 2020 Mark Paddy 111876646. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var passI = 0
    @IBOutlet weak var tView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return returnArray().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value2, reuseIdentifier: "cellT")
        cell.detailTextLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping;
            cell.detailTextLabel!.numberOfLines = 0;
        
        if(type == true){
            strength = false
            let returnArr = returnArray().sorted()
          
            cell.textLabel?.text = returnArr[indexPath.row]
        //cell.detailTextLabel?.text = returnType()[indexPath.row]
        let label = UILabel.init(frame: CGRect(x:0,y:0,width:100,height:20))
        label.text = returnType()[indexPath.row]
            cell.accessoryView = label
             return(cell)
        }
        else if(strength == true){
            type = false
            var returnStren = returnStrength().sorted()
        cell.textLabel?.text = returnArray()[indexPath.row]
        //cell.detailTextLabel?.text = returnType()[indexPath.row]
        let label = UILabel.init(frame: CGRect(x:0,y:0,width:100,height:20))
        label.text = String(returnStren[indexPath.row])
            cell.accessoryView = label
         return(cell)
    }
        return(cell)
    }
    func returnArray()->Array<String>{
        let defaults = UserDefaults.standard.object(forKey: "SavedStringArray")
        return(defaults) as! Array<String>
    }
    func returnType()->Array<String>{
        let defaults = UserDefaults.standard.object(forKey: "SavedTypeArray")
        return(defaults) as! Array<String>    }
    func returnNpn()->Array<Int>{
        let defaults = UserDefaults.standard.object(forKey: "SavedNpnArray")
        return(defaults) as! Array<Int>    }
    func returnGen()->Array<String>{
           let defaults = UserDefaults.standard.object(forKey: "SavedGenArray")
           return(defaults) as! Array<String>    }
       func returnStrength()->Array<Int>{
        let defaults = UserDefaults.standard.object(forKey: "SavedStrengthArray")
              return(defaults) as! Array<Int>    }

             
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func refreshButton(_ sender: Any) {
        tView.reloadData()
    }
    @IBAction func unwindToMainMenu(sender: UIStoryboardSegue){
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        passI = indexPath.row

        // Segue to the second view controller
        self.performSegue(withIdentifier: "iSeg", sender: self)
    }
    
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the second view controller
        let secondViewController = segue.destination as! SegViewController
        
        // set a variable in the second view controller with the data to pass
       secondViewController.recievedName = returnArray()[passI]
        secondViewController.recievedType=returnType()[passI]
        secondViewController.recievedNPN=String(returnNpn()[passI])
        secondViewController.recievedGen=returnGen()[passI]
        secondViewController.recievedStren=String(returnStrength()[passI])
        
    }


}

