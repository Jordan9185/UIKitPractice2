//
//  ViewController.swift
//  UIKitPractice2
//
//  Created by JordanLin on 2017/8/3.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

import WebKit

class ViewController: UIViewController, UISearchResultsUpdating, WKUIDelegate {

    var headerView: UIView!
    
    var searchController: UISearchController!
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setUpHeaderView()
        
        setUISearchController()
        
        setWebView()
        
        let myURL = URL(string: "https://www.apple.com")
        
        let myRequest = URLRequest(url: myURL!)
        
        webView.load(myRequest)
        
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
    
    func setWebView() {
        
        let webConfiguration = WKWebViewConfiguration()
        
        webView = WKWebView(
            frame: .init(
                x: 0,
                y: 64,
                width: self.view.frame.width,
                height: self.view.frame.height - 64),
            configuration: webConfiguration
        )
        
        webView.uiDelegate = self
        
        self.view.addSubview(webView)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }

}

