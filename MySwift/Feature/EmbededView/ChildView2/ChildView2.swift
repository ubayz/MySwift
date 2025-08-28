//
//  ChildView2.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class ChildView2: UIView {
    
    @IBOutlet weak var label: UILabel!
    
    static let identifier = String(describing: ChildView2.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
