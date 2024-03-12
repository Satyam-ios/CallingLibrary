//
//  CountryCodeModelView.swift
//  C2CB-iOS-Library
//
//  Created by V Group Inc on 14/12/23.
//

import Foundation
import UIKit
protocol countryViewDelegate{
    func getCountryDetails(countryCode:String,countryName:String,code:String,countryId:String)
}
open class ContryCodeModelView{
    var countryCodeVC:CountryCodeViewController?
    var baseView:BaseViewController?
    var countriesArray = [Countries]()
    func getAllCountriesApiCalling(){
        API.get(Endpoint: .getAllCountries, parameter: nil, completion: {(response , error) in
            if let error = error{
               // Toast.showAlertMessage(message: error, alertType: .error)
                //self.addNewContact?.showAlert(title: "Error", message: error)
                showAlert(title: "Error", message: error, view: self.countryCodeVC ?? UIViewController())
                return
            }
           // self.countriesArray.removeAll()
            if let countries = response!["countries"],
            let data = Constant.jsonToData(json: countries),
                let mode = try? JSONDecoder().decode([Countries].self, from: data){
                self.countriesArray.append(contentsOf: mode)
                DispatchQueue.main.async {
                    self.countryCodeVC?.countryTableView.reloadData()
                   let ipCountry = UserDefaults.standard.object(forKey: "country_name") as? String
                    print("ipCountryName,---------",ipCountry ?? "")
                    if !self.countriesArray.isEmpty{
                        for value in self.countriesArray{
                            if ipCountry == value.country{
                                self.baseView?.country_code = value.code ?? ""
                                let ipcountryCode = "\((value.code ?? "") + " " + (value.country ?? ""))"
                                self.baseView?.countryCodeText.text = ipcountryCode
                                break;
                            }
                        }
                    }
                   }
            }
        })

    }
    
}
