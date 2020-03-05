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
loadCountries()
        // Do any additional setup after loading the view.
    }
    func loadCountries(){
        countryName.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
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
}
