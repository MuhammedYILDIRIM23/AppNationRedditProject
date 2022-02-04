//
//  MainViewModel.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

import Foundation


protocol MainViewModelProtocol {
    var childList: [Child] { get set }
    var apiCallerProtocol: APICallerProtocol { get }
    func fetchItems()
    
    var mainViewControllerProtocol: MainViewControllerProtocol? { get }
    func setDelegate(cellProtocol: MainViewControllerProtocol)
}




final class MainViewModel: MainViewModelProtocol {
    var mainViewControllerProtocol: MainViewControllerProtocol?
    func setDelegate(cellProtocol: MainViewControllerProtocol) {
        mainViewControllerProtocol = cellProtocol
    }
    
    var childList: [Child] = []
    
    var apiCallerProtocol: APICallerProtocol
    

    init() {
        apiCallerProtocol = APICaller()
    }
    
    
    
    func fetchItems() {
        guard let url = URL(string: "\(Constants.apiUrlPath)") else { return }
        apiCallerProtocol.fetchReddit(url: url) { [weak self] child in
            guard let child = child else { return }
            self?.childList = child
            self?.mainViewControllerProtocol?.saveDatas(value: self?.childList ?? [])
        }
    }
    
    
}
