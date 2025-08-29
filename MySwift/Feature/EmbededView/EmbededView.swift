//
//  EmbededView.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class EmbededView: BaseViewController, ChildView2Delegate {
    
    @IBOutlet weak var ChildViewContainer: UIView!
    
    var currentVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Embeded View"

    }
    
    @IBAction func childView1(_ sender: Any) {
        if let childView1: ChildView1 = ChildView1.loadFromNib() {
            childView1.label.text = "Child View 1"
            childView1.embedView(in: ChildViewContainer)
        }
    }
    
    @IBAction func childView2(_ sender: Any) {
        if let childView2: ChildView2 = ChildView2.loadFromNib() {
            childView2.delegate = self
            childView2.embedView(in: ChildViewContainer)
        }
    }
    
    func didTapNavigate(){
        self.navigationController?.popViewController(animated: true)
    }
    
}
