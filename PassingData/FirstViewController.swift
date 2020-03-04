//
//  ViewController.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-03.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    var countryList = ["India","Canada","USA","UK","Sri Lanka","Nepal","Russia","Pakistan"]
    var codeList = ["CAN", "IN","NEP","UK","USA","SL","RUS","PAK"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
    }

    @IBAction func btnNext(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        
        if let name = self.txtName.text
        {
            secondVC.name = name
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 2
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return self.countryList.count
            
        }
        else{
            return self.codeList.count
        }
       }
       
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return countryList[row]}
        else{
            return codeList[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            print(countryList[row])}
        else{
            print(codeList[row])}
    }
}

