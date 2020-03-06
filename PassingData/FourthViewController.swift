//
//  FourthViewController.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-05.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var countryLabel: UILabel!
    var label: String?
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        countryLabel.text = label
    
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
