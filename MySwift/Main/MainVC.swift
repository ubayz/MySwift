//
//  MainVC.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class MainVC: BaseViewController {
    
    @IBOutlet weak var menuTable: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        setupTableView(view:self.view,
                       table: menuTable,
                       cell: Global.shared.nibForView(MainCell.self),
                       delegate: self,
                       dataSource:self)
    }
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Global.shared.nibForView(MainCell.self),
            for: indexPath) as? MainCell else {
            return UITableViewCell()
        }
        let item = data[indexPath.row]
        cell.configure(with: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = data[indexPath.row]
        let title = item.title
        let controller = self.getController(title)
        navigateTo(controller: controller, title: title)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? MainCell {
            cell.container.backgroundColor = .white
        }
    }
}
