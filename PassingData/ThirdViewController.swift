//
//  ThirdViewController.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-04.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var tblCountry: UITableView!
    var countryName: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName = DataStorage.getInstance().getAllCountries()
        // Do any additional setup after loading the view.
        readPlistData()
    }
//Read pList data
    func readPlistData(){
        if let path = Bundle.main.path(forResource: "Country", ofType: "plist"){
            //print(path)
            if let dictionary = NSMutableDictionary(contentsOfFile: path){
                print(dictionary)
                if let countries = dictionary["countries"] as? [String]{
                    for v in countries{
                        print(v)
                    }
                }
            }
        }
    }
    
  /*  func loadCountries(){
        countryName.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// table in extension
extension ThirdViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableview: UITableView) -> Int{
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return countryName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        let country = countryName[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = countryName[indexPath.row]
//animate to next screen through table values
       /* let sb = UIStoryboard(name: "Main", bundle: nil)
        let fourthVC = sb.instantiateViewController(identifier: "fourthVC") as! FourthViewController
        fourthVC.label = c.name
        self.navigationController?.pushViewController(fourthVC, animated: true)*/
        print(c.name)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
}
