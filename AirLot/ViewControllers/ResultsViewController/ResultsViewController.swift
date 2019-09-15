//
//  ResultsViewController.swift
//  AirLot
//
//  Created by Przemysław Kalawski on 15/09/2019.
//  Copyright © 2019 Przemysław Kalawski. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    private var results: [WelcomeElement] = []
    private let networking: Networking = NetworkingImpl()
    @IBOutlet weak var resultsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsTableView.dataSource = self
        self.resultsTableView.delegate = self
        
        networking.send(url: UrlHelper.url(for: ContentService.shared)) { (welcome) -> (Void) in
            self.results = welcome
            DispatchQueue.main.async {
                self.resultsTableView.reloadData()
            }
        }
    }
}

extension ResultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let resultCell = tableView.dequeueReusableCell(withIdentifier: ResultCell.className, for: indexPath) as? ResultCell else {
            return UITableViewCell()
        }
        resultCell.model = results[indexPath.row]
        return resultCell
    }
}

extension ResultsViewController: UITableViewDelegate {
    
}
