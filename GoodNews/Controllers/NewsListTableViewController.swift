//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Vladimir Pisarenko on 26.10.2022.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        setup()
        setupNavC()
    }
    
    private func setup() {
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-09-26&sortBy=publishedAt&apiKey=d640debcdbc34953bf5cae9f64c94ddb")!
        
        Webservice().getArticles(url: url) { _ in
            
        }

        tableView.delegate = self
        tableView.dataSource = self
        //        tableView.backgroundColor = .gray
    }
    
    private func setupNavC() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 57/255, alpha: 1.0)
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        self.navigationController?.navigationBar.prefersLargeTitles = true

    }
    
    
}
