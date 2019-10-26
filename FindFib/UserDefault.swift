//
//  UserDefault.swift
//  FindFib
//
//  Created by Ambas Chobsanti on 26/10/19.
//  Copyright © 2019 Ambas Chobsanti. All rights reserved.
//

import Foundation

@propertyWrapper
struct UserDefault<T> {
    var key: String
    var defaultValue: T
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.value(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

enum GlobalSettings {
    @UserDefault(key: "Fib", defaultValue: [Int]())
    static var fib: [Int]
}
