//
//  MainCell.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class MainCell: UITableViewCell {
    
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        container.layer.borderWidth = 2.0
        container.layer.borderColor = UIColor.black.cgColor
        container.layer.cornerRadius = 8.0
    }

    func configure(with item: MainEntity) {
        titleLabel.text = item.title
    }
}
