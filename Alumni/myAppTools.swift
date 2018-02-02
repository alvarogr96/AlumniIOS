//
//  myAppTools.swift
//  Alumni
//
//  Created by alumnos on 10/1/18.
//  Copyright © 2018 adrian. All rights reserved.
//

import Foundation

let defaults = UserDefaults.standard



func isValidEmail(YourEMailAddress: String) -> Bool {
    let REGEX: String
    REGEX = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    return NSPredicate(format: "SELF MATCHES %@", REGEX).evaluate(with: YourEMailAddress)
}

func saveDataInUserDefaults(value: String, key: String){
    var user = [String: Any]()
    if defaults.object(forKey: "user") != nil {
        user = defaults.object(forKey: "user") as! [String : Any]
    }
    user.updateValue(value, forKey: key)
    defaults.set(user, forKey: "user")
    defaults.synchronize
    print("USER IN USERDEFAULTS :::: \(String(describing: defaults.object(forKey: "user")))")
}

func getDataInUserDefaults(key: String) -> Any? {
    var user = [String: Any]()
    user = defaults.object(forKey: "user") as! [String : Any]
    let data = user[key]
    print("DATA IN USERDEFAULTS :::: \(String(describing: data))")
    return data
}



