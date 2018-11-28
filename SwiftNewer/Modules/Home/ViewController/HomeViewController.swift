//
//  HomeViewController.swift
//  SwiftNewer
//
//  Created by lsp's mac pro on 2018/10/25.
//  Copyright © 2018 lsp's mac pro. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    var _tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.creatTableView()
        
    }
    
    func creatTableView() {
        _tableView = UITableView(frame:CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height) , style: .plain)
        _tableView.separatorStyle = .none
        _tableView.delegate = self
        _tableView.dataSource = self
        self.view.addSubview(_tableView)
        let footerView = UIView()
        _tableView.tableFooterView = footerView
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 30
        }else if indexPath.section == 1{
            return 300
        }else{
            return 10
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let indentifier = "HomeNoticeTableViewCell"
            var cell: HomeNoticeTableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?HomeNoticeTableViewCell
            if cell == nil {
                cell = HomeNoticeTableViewCell(style: .default, reuseIdentifier: indentifier)
            }
            cell.selectionStyle = .none
            return cell
        }else if indexPath.section == 1{
            let indentifier = "HomeBannerTableViewCell"
            var cell: HomeBannerTableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?HomeBannerTableViewCell
            if cell == nil {
                cell = HomeBannerTableViewCell(style: .default, reuseIdentifier: indentifier)
            }
            cell.selectionStyle = .none
            return cell
        }else{
            let indentifier = "HomeRecommdTableViewCell"
            var cell: HomeRecommdTableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)as?HomeRecommdTableViewCell
            if cell == nil {
                cell = HomeRecommdTableViewCell(style: .default, reuseIdentifier: indentifier)
            }
            cell.selectionStyle = .none
            return cell
        }
    
    }
}


extension HomeViewController{
    
}
