//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Zakirov Tahir on 13.02.2020.
//  Copyright © 2020 Zakirov Takhir. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
        
    }
    
    static func deteleObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
    
}
