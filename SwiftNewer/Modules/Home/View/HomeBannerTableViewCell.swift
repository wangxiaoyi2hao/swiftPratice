//
//  HomeBannerTableViewCell.swift
//  SwiftNewer
//
//  Created by lsp's mac pro on 2018/11/1.
//  Copyright © 2018 lsp's mac pro. All rights reserved.
//

import UIKit
import SDCycleScrollView

class HomeBannerTableViewCell: UITableViewCell,SDCycleScrollViewDelegate {

    var bannerView :SDCycleScrollView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUi()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUi(){
        bannerView = SDCycleScrollView.init(frame: CGRect(x: 0, y: 0, width: 375, height: 142), delegate: self as SDCycleScrollViewDelegate, placeholderImage: nil)
        bannerView?.imageURLStringsGroup = ["home_message","home_message"]
        self.contentView.addSubview(bannerView!)
    }
    
    //图片滚动到什么位置
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didScrollTo index: Int) {
        
    }
    
    //图片点击
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
        
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
