//
//  Global.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class Global {
    static let shared = Global()
    
    func nibForView<T>(_ type: T.Type) -> String {
        return String(describing: T.self)
    }
}
