//
//  ViewController.swift
//  5Y
//
//  Created by Phonthep Aungkanukulwit on 21/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet private weak var tableview: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    tableview.delegate = self
    tableview.dataSource = self
    tableview.register(UINib(nibName: "TileTableViewCell", bundle: nil), forCellReuseIdentifier: "TileTableViewCell")
//    tableview.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 16, right: 16)
//    tableview.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 16, right: 16)
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableview.dequeueReusableCell(withIdentifier: "TileTableViewCell", for: indexPath) as? TileTableViewCell else {
      return UITableViewCell()
    }
//    cell.setupUI(imageName: fruits[indexPath.row])
    return cell
  }
}



