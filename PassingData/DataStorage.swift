//
//  DataStorage.swift
//  PassingData
//
//  Created by Anmol singh on 2020-03-05.
//  Copyright © 2020 Swift Project. All rights reserved.
//

import Foundation
class DataStorage
{
    private static let instance = DataStorage()
    private lazy var countryList: [Country] = []
    private init (){}
    
    static func getInstance() -> DataStorage{
        return instance
    }
    
    func addCountry(country: Country){
        self.countryList.append(country)
    }
    
    func getAllCountries() -> [Country]{
        return self.countryList
    }
    func loadData(){
        countryList.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "India", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "Canada", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
        countryList.append(Country.init(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "elephant.png")))
                                                  
    }
}
