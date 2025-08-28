//
//  Entity.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import Foundation

struct MainEntity {
    let title: String
}

enum MainMenu: String {
    case embededView = "Embed View"
    
    func value() -> String {
        return self.rawValue
    }
}
