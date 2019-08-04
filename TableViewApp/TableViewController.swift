//
//  TableViewController.swift
//  TableViewApp
//
//  Created by 小平恭兵 on 2019/08/04.
//  Copyright © 2019 kk-project. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var newsTitle = ""
    var select = 0

    // 画面内に表示するニュースタイトルを入れています。
    let newsA: [String] = [
        "【地震速報】◯◯海域で地震が発生しました。",
        "世界遺産の秘密が明らかに",
        "時代の先駆け？最先端バイオスーツの開発！",
        "人類初の宇宙での未確認生物発見！？"
    ]

    let newsB: [String] = [
        "◯◯◯さんが電撃結婚！",
        "松岡禎丞またいじられる",
    ]

    let newsC: [String] = [
        "とんでもない打率をもつ男！",
        "野球選手にサイヤ人抜擢",
        "ボクサーが素人相手に本気で暴行する",
        "スポーツ選手の呼び名が変わる！？"
    ]

    let images: [String] = ["01", "02", "03", "01"]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = newsTitle
    }

    // MARK: - Table view data source

    // セクション数の指定
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // セルの数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch select {
        case 0:
            return newsA.count
        case 1:
            return newsB.count
        case 2:
            return newsC.count
        default:
            return 0
        }
    }

    // セルの操作
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)

        // ニュースをセルにセットする
        switch select {
        case 0:
            cell.textLabel?.text = newsA[indexPath.row]
            cell.imageView?.image = UIImage(named: images[indexPath.row])
        case 1:
            cell.textLabel?.text = newsB[indexPath.row]
            cell.imageView?.image = UIImage(named: images[indexPath.row])
        case 2:
            cell.textLabel?.text = newsC[indexPath.row]
            cell.imageView?.image = UIImage(named: images[indexPath.row])
        default:
            print("存在しないニュース")
        }

        return cell
    }

}
