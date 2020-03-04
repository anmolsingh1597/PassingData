//
//  ViewController.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-03.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
}

