//
//  ViewController.swift
//  UIKitPractice2
//
//  Created by JordanLin on 2017/8/3.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import UIKit

import WebKit

class ViewController: UIViewController, UISearchBarDelegate, WKUIDelegate {

    var headerView: UIView!
    
    var searchController: UISearchController!
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUpHeaderView()
        
        setUISearchController()
        
        setWebView()
        
        let myURL = URL(string: "https://www.apple.com")
        
        let myRequest = URLRequest(url: myURL!)
        
        self.webView.load(myRequest)
        
    }
    
    func setUpHeaderView() {
        
        headerView = UIView()
        
        headerView.backgroundColor = .white
        
        self.view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 64).isActive = true
        
        headerView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        headerView.heightAnchor.constraint(equalTo:self.view.heightAnchor).isActive = true
        
    }

    func setUISearchController() {
        
        searchController = UISearchController(searchResultsController: nil)
        
        searchController.searchBar.delegate = self
        
        searchController.dimsBackgroundDuringPresentation = false
        
        searchController.searchBar.searchBarStyle = .prominent
        
        searchController.searchBar.sizeToFit()
        
        self.headerView.addSubview(searchController.searchBar)
        
    }
    
    func setWebView() {
        
        let webConfiguration = WKWebViewConfiguration()
        
        webView = WKWebView(
            frame: .init(
                x: 0,
                y: 44,
                width: self.view.frame.width,
                height: self.view.frame.height - 44),
            configuration: webConfiguration
        )
        
        webView.uiDelegate = self
        
        self.headerView.addSubview(webView)
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        let myURL = URL(string: searchBar.text!)
        
        let myRequest = URLRequest(url: myURL!)
        
        self.webView.load(myRequest)

    }

}

