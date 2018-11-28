//
//  HomeNoticeTableViewCell.swift
//  SwiftNewer
//
//  Created by lsp's mac pro on 2018/10/31.
//  Copyright © 2018 lsp's mac pro. All rights reserved.
//

import UIKit
import SnapKit

class HomeNoticeTableViewCell: UITableViewCell {
    var meesageImg:UIImageView?
    var noticeImg:UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupUi()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupUi() {
        self.meesageImg = UIImageView()
        self.meesageImg?.image = UIImage(named: "home_message")
        self.contentView.addSubview(self.meesageImg!)
        self.meesageImg?.snp.makeConstraints({ (make) in
            make.right.equalTo(-20)
            make.top.equalTo(10)
            
        })
        
        self.noticeImg = UIImageView()
        self.noticeImg?.image = UIImage(named: "Home_TheHorn")
        self.contentView.addSubview(self.noticeImg!)
        self.noticeImg?.snp.makeConstraints({ (make) in
            make.left.equalTo(20)
            make.top.equalTo(self.meesageImg!)
        })
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
