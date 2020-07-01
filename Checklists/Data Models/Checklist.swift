//
//  Checklist.swift
//  Checklists
//
//  Created by Yury Kurylovich on 28.06.2020.
//  Copyright © 2020 Yury Kurylovich. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    var iconName = "No Icon"
    
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
//    func countUncheckedItems() -> Int {
//        var count = 0
//        for item in items where
//            !item.checked {
//                count += 1
//        }
//        return count
//    }
    
    func countUncheckedItems() -> Int {
        return items.reduce(0) {
            counter, item in counter + (item.checked ? 0 : 1)
        }
    }
    
    
}
