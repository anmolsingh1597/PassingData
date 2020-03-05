//
//  SecondViewController.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-03.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var switchRememberMe: UISwitch!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblWelcome: UILabel!
    var name: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true // hide back button
        self.addCloseButton()
        // hides navigation bar
       // self.navigationController?.hidesBarsOnTap = true
       // self.navigationController?.hidesBarsOnSwipe = true
       // self.navigationController?.navigationBar.isHidden = true
        
        
       // let designatedVC = self.navigationController?.viewControllers[1] // setting viewcontroller(vc) index number to a constant
     //   self.navigationController?.popToViewController(designatedVC, animated: true) // jump to designated view controller
        if let nm = name
        {
            self.lblWelcome.text = "Welcome, \(nm)"
            self.navigationItem.title = nm // setting the title
        }else
        {
            self.lblWelcome.text = "No name sent from first view"
        }

        // Do any additional setup after loading the view.
    }
 
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        lblName.text = ""
    }
    
    private func addCloseButton(){
        let btnclose = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(self.goBack))
        
        self.navigationItem.rightBarButtonItem = btnclose
    }
    
    @objc func goBack(){
       // self.navigationController?.popViewController(animated: true) // workflow is in stack-pop out current page and move back to last page
        self.navigationController?.popToRootViewController(animated: true)// pop back to root page(eg. Home button)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnLogIn(_ sender: UIButton) {
         if switchRememberMe.isOn == true{
                    UserDefaults.standard.set(txtName.text, forKey: "name")
               }
    }
    /*   @IBAction func btnSaveClick(_ sender: UIButton) {
       // userDefaults is used for storing data locally
        UserDefaults.standard.set(txtName.text, forKey: "name")
    }*/
    @IBAction func btnFetchClick(_ sender: UIButton) {
        // fetching data from local data memory
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        lblName.text = name
    }
    @IBAction func btnRemoveClick(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "name")
    }
}

