//
//  ViewController.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

import UIKit

protocol MainViewControllerProtocol {
    func saveDatas(value: [Child])
}


// deneme Commit 
final class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private lazy var childList: [Child] = []
    lazy var mainViewModel: MainViewModelProtocol = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        mainViewModel.setDelegate(cellProtocol: self)
        mainViewModel.fetchItems()
    }
}


extension MainViewController: MainViewControllerProtocol {
    func saveDatas(value: [Child]) {
        childList = value
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}



extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    private func tableViewSetup() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return childList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.tableViewCellIdentifier, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
//        cell.saveModel(model: childList[indexPath.row])
        cell.titleLabel.text = childList[indexPath.row].data?.title
        cell.thumbnailLabel.text = childList[indexPath.row].data?.thumbnail
        cell.descriptionLabel.text = childList[indexPath.row].data?.selftext
        return cell
        
    }
}
