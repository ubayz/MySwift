//
//  EmbededView.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class EmbededView: BaseViewController {
    
    @IBOutlet weak var ChildViewContainer: UIView!
    
    var currentVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Embeded View"
        
        if let childView: ChildView1 = ChildView1.loadFromNib() {
            childView.label.text = "BAYU"
            childView.embedView(in: ChildViewContainer)
        }
    }
}
