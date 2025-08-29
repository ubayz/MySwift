//
//  ChildView2.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

protocol ChildView2Delegate: AnyObject {
    func didTapNavigate()
}

class ChildView2: UIView {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    
    weak var delegate: ChildView2Delegate?
    var hasil: Int = 0

    func logicProcess() {
        let int1 = Int(input1.text ?? "") ?? 0
        let int2 = Int(input2.text ?? "") ?? 0
        hasil = int1 + int2
        label.text = String(describing: hasil)
    }
    
    @IBAction func proses(_ sender: Any) {
        logicProcess()
    }
    
    @IBAction func navigasi(_ sender: Any) {
        delegate?.didTapNavigate()
    }
    
}
