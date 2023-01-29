//
//  WKWebViewMac.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import Foundation
import UIKit
import WebKit

final class WebViewController: UIViewController {
    
    private let webView = WKWebView()
    private let toolbar = UIToolbar().createToolbar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       initialize()
    }
}
//MARK: - Private Init
extension WebViewController {
    private func initialize() {
        loadRequest()
        
        //MARK: - WebView
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: - Bar Button Item
        self.navigationItem.leftBarButtonItems = [createNext(), createCancel()]
        self.navigationItem.rightBarButtonItem = createReload()
        
        //MARK: - Toolbar
        view.addSubview(toolbar)
        toolbar.setItems([createCancel(), createNext(), createReload()], animated: true)
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            toolbar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            toolbar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            toolbar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            toolbar.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    //MARK: - Request
    private func loadRequest() {
        guard let url = URL(string: "https://www.apple.com/ru/macbook-air/") else {return}
                
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    //MARK: - CreateBarButton
    private func createCancel() -> UIBarButtonItem {
        let cancel = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .done, target: self, action: #selector(cancelAction))
        return cancel
    }
    private func createNext() -> UIBarButtonItem {
        let next = UIBarButtonItem(image: UIImage(systemName: "chevron.right"), style: .done, target: self, action: #selector(nextAction))
        return next
    }
    private func createReload() -> UIBarButtonItem {
        let reload = UIBarButtonItem(image: UIImage(systemName: "goforward"), style: .done, target: self, action: #selector(reloadAction))
        return reload
    }
    @objc func cancelAction() {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    @objc func nextAction() {
        if webView.canGoBack {
            webView.goForward()
        }
    }
    @objc func reloadAction() {
        webView.reload()
    }
}

