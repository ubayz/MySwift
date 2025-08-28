//
//  BaseViewController.swift
//  MySwift
//
//  Created by Bayu Rachmawan Rahmat on 28/08/25.
//

import UIKit

class BaseViewController: UIViewController {
    
    let data: [MainEntity] = [
        MainEntity(title: "Embed View")
    ]
    
    func getController(_ title: String) -> UIViewController {
        switch title {
        case MainMenu.embededView.rawValue:
            return EmbededView(nibName: Global.shared.nibForView(EmbededView.self), bundle: nil)
        default:
            showSnackbar(message: "Controller belum ada")
            return UIViewController()
        }
    }
    
    func navigateTo(controller: UIViewController, title:String){
        controller.title = title
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func setNavTitle(_ navigation: UINavigationController){
        let backButton = UIBarButtonItem()
        backButton.title = "Kembali"
        navigation.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    func showSnackbar(message: String, duration: TimeInterval = 2.0) {
        let snackbar = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        self.present(snackbar, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            snackbar.dismiss(animated: true)
        }
    }
    
    func setupTableView(view: UIView, table: UITableView, cell: String,
        delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        table.frame = view.bounds
        table.delegate = delegate
        table.dataSource = dataSource
        let nib = UINib(nibName: cell, bundle: nil)
        table.register(nib, forCellReuseIdentifier: cell)
        view.addSubview(table)
    }
}


