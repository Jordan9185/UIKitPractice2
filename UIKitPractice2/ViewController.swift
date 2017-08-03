//
//  ViewController.swift
//  UIKitPractice2
//
//  Created by JordanLin on 2017/8/3.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {

    var headerView: UIView!
    
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUpHeaderView()
        
        setUISearchController()
        
    }
    
    func setUpHeaderView() {
        
        headerView = UIView()
        
        headerView.backgroundColor = .white
        
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        headerView.heightAnchor.constraint(equalTo:self.view.heightAnchor).isActive = true
        
    }

    func setUISearchController() {
        
        searchController = UISearchController(searchResultsController: nil)
        
        searchController.searchResultsUpdater = self
        
        searchController.dimsBackgroundDuringPresentation = false
        
        searchController.searchBar.searchBarStyle = .prominent
        
        searchController.searchBar.sizeToFit()
        
        searchController.searchBar.frame.origin.y = 20
        
        self.view.addSubview(searchController.searchBar)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }

}

