//
//  NewsTableViewController.swift
//  TableViewApp
//
//  Created by 小平恭兵 on 2019/08/04.
//  Copyright © 2019 kk-project. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var newsTitle: String = ""
    var selectNews: Int = 0

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let select = indexPath.row

        selectNews = select

        switch select {
        case 0:
            newsTitle = "速報"
        case 1:
            newsTitle = "芸能"
        case 2:
            newsTitle = "スポーツ"
        default:
            print()
        }
        performSegue(withIdentifier: "showNews", sender: nil)
    }

    // segue遷移前動作
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showNews", let vc = segue.destination as? TableViewController else {
            return
        }
        vc.newsTitle = newsTitle
        vc.select = selectNews
    }

}
