//
//  SearchViewController.swift
//  Something
//
//  Created by Artem on 29.01.2023.
//

import UIKit

final class SearchViewController: UIViewController {
    
    //MARK: - View
    private let search = UISearchController().createSearch()
    private let watching = UILabel().titlelabel("Недавно просмотренные")
    private let macView = MacView()
    private let strapSport = StrapSport()
    private let leatherCase = LeatherCase()
    private let optionFetch = UILabel().titlelabel("Варианты запросов")
    
    private let labelResult = UILabel().result()
    private let scroll = UIScrollView().createScroll()
    
    
    //MARK: - Enum
    private enum Constants {
        static let productWidth: CGFloat = 150
        static let productHeight: CGFloat = 200
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }

}
//MARK: - Private Init
extension SearchViewController {
    private func initialize() {
        view.backgroundColor = UIColor(named: "backgroundColor")
        
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //MARK: - TapGesureMar
        let tap = UITapGestureRecognizer(target: self, action: #selector(addForMac))
        tap.numberOfTouchesRequired = 1
        macView.addGestureRecognizer(tap)
       
        //MARK: - TapGestureStrap
        let tapTo = UITapGestureRecognizer(target: self, action: #selector(addForStrap))
        tapTo.numberOfTouchesRequired = 1
        strapSport.addGestureRecognizer(tapTo)
        
        //MARK: - TapGestureLeather
        let tapTwo = UITapGestureRecognizer(target: self, action: #selector(addForLeather))
        tapTwo.numberOfTouchesRequired = 1
        leatherCase.addGestureRecognizer(tapTwo)

        
        //MARK: - Search
        navigationItem.searchController = search
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation =  true
        
        
        //MARK: - View
        view.addSubview(search.searchBar)
        view.addSubview(watching)
        view.addSubview(optionFetch)
        
        labelResult.text = search.searchResultsUpdater?.description
        labelResult.text = search.searchBar.text
        view.addSubview(labelResult)
        
        scroll.contentSize = CGSize(width: self.view.bounds.width * 1.25, height: Constants.productHeight)
        view.addSubview(scroll)
        scroll.addSubview(macView)
        scroll.addSubview(strapSport)
        scroll.addSubview(leatherCase)
        
        //MARK: - Contraints
        NSLayoutConstraint.activate([
            
            watching.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            watching.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            scroll.topAnchor.constraint(equalTo: watching.bottomAnchor, constant: 20),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.heightAnchor.constraint(equalToConstant: Constants.productHeight),
            
            macView.topAnchor.constraint(equalTo: scroll.topAnchor),
            macView.leadingAnchor.constraint(equalTo: scroll.leadingAnchor, constant: 20),
            macView.widthAnchor.constraint(equalToConstant: Constants.productWidth),
            macView.heightAnchor.constraint(equalToConstant: Constants.productHeight),

            strapSport.topAnchor.constraint(equalTo: scroll.topAnchor),
            strapSport.leadingAnchor.constraint(equalTo: macView.trailingAnchor, constant: 10),
            strapSport.widthAnchor.constraint(equalToConstant: Constants.productWidth),
            strapSport.heightAnchor.constraint(equalToConstant: Constants.productHeight),

            leatherCase.topAnchor.constraint(equalTo: scroll.topAnchor),
            leatherCase.leadingAnchor.constraint(equalTo: strapSport.trailingAnchor, constant: 10),
            leatherCase.widthAnchor.constraint(equalToConstant: Constants.productWidth),
            leatherCase.heightAnchor.constraint(equalToConstant: Constants.productHeight),

            optionFetch.topAnchor.constraint(equalTo: macView.bottomAnchor, constant: 30),
            optionFetch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            labelResult.topAnchor.constraint(equalTo: optionFetch.bottomAnchor, constant: 20),
            labelResult.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    //MARK: - GestureTargetMac
    @objc func addForMac() {
        let buy = DescriptionMacViewController()
        buy.titleLabel.text = self.macView.descriptLabel.text
        buy.macImage.image = self.macView.mac.image
        buy.descriptLabel.text = self.macView.descriptLabel.text
        self.navigationController?.pushViewController(buy, animated: true)
    }
    //MARK: - GestureTargetStrap
    @objc func addForStrap() {
        let strap = DescriptionStrapViewController()
        strap.titleLabel.text = self.strapSport.descriptLabel.text
        strap.macImage.image = self.strapSport.imageMain.image
        strap.descriptLabel.text = self.strapSport.descriptLabel.text
        self.navigationController?.pushViewController(strap, animated: true)
    }
    //MARK: - GestureTargetLeather
    @objc func addForLeather() {
        let leather = DescriptionLeatherCaseViewController()
        leather.titleLabel.text = self.leatherCase.descriptLabel.text
        leather.macImage.image = self.leatherCase.leather.image
        leather.descriptLabel.text = self.leatherCase.descriptLabel.text
        self.navigationController?.pushViewController(leather, animated: true)
    }
}
//MARK: - SearchUpdatingResult
extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = search.searchBar.text else {return}
        labelResult.text = text
        search.resignFirstResponder()
    }
}


