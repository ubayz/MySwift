//
//  UIView+Ext.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

extension UIView {
    
    static func loadFromNib<T: UIView>() -> T? {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        return nib.instantiate(withOwner: nil, options: nil).first as? T
    }

    func embedView(in container: UIView) {
        self.frame = container.bounds
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        container.addSubview(self)
    }
}

