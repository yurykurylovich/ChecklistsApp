//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Yury Kurylovich on 22.06.2020.
//  Copyright © 2020 Yury Kurylovich. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked.toggle()
    }
}
